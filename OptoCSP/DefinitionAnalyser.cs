using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OptoCSP
{
    public class DefinitionAnalyser
    {
        private List<Process> processList;
        private SystemDef systemDefinition;

        public List<Channel> Channels { get; private set; }
        public List<Process> Processes { get; private set; }

        private List<String> ChannelSync;
        private List<String> ProcessSync;

        public DefinitionAnalyser(List<Process> ProcessList, SystemDef SystemDefinition)
        {
            this.processList = ProcessList;
            this.systemDefinition = SystemDefinition;
            this.ChannelSync = new List<string>();
            this.ProcessSync = new List<string>();

            Channels = new List<Channel>();
            Processes = new List<Process>();
        }

        public bool Analyse()
        {
            bool bRetVal = false;

            /* Go through all the symbols of the system definition and get all the processes under optional parallelism */
            foreach (var symb in systemDefinition.Symbols)
            {
                if (symb.Type == Symbol.enSymbolType.Operator)
                {
                    if (symb.Value.Contains("[||"))
                    { 
                        /* Here we have a optional parallel operator */
                        /* Get the name of the process before and after the operator */
                        int iLeftIndex = systemDefinition.Symbols.IndexOf(symb) - 1;
                        int iRightIndex = iLeftIndex + 2;
                        
                        /* Names of the processes */
                        String leftName = systemDefinition.Symbols[iLeftIndex].Value;
                        String rightName = systemDefinition.Symbols[iRightIndex].Value;

                        /* Definition of the processes */
                        Process leftProc = processList.First(p => p.Name == leftName);
                        Process rightProc = processList.First(p => p.Name == rightName);

                        /* Get the syncronisation set */
                        String sSyncSetRaw = symb.Value.Trim(new char[] { '|', '[', ']', '{', '}' });
                        String[] SyncSet = sSyncSetRaw.Split(new char[] { ',' });

                        /* Generate an output definition */
                        /* Rename the traces which are equal to the sync set */
                        /* Add a channel definition */
                        foreach (String syncTrace in SyncSet)
                        {
                            /* Add the processes to the process list if the do not already exist */
                            if (!Processes.Any(p => p.Name == leftProc.Name))
                            {
                                Processes.Add(leftProc);
                            }

                            if (!Processes.Any(p => p.Name == rightProc.Name))
                            {
                                Processes.Add(rightProc);
                            } 

                            /* We have the two processes and the name of the sync trace between the processes */

                            if (leftProc.Symbols.Any(p => (p.Type == Symbol.enSymbolType.Trace) && (GetTrace(p.Value) == syncTrace)))
                            {
                                /* Only add a channel to the process if it does not already have a channel for the sync trace */
                                if (!leftProc.Channels.Any(p => p.PublicTrace == syncTrace))
                                {
                                    /* Create a channel for the left process */
                                    Channel chanLeft = new Channel(leftProc, syncTrace);
                                    /* Add the channel to the left process */
                                    leftProc.AddChannel(chanLeft);

                                    /* Add the channels to the channel list */
                                    if (!Channels.Any(p => p.Name == chanLeft.Name))
                                    {
                                        Channels.Add(chanLeft);
                                    }
                                }
                            }

                            if (rightProc.Symbols.Any(p => (p.Type == Symbol.enSymbolType.Trace) && (GetTrace(p.Value) == syncTrace)))
                            {
                                /* Only add a channel to the process if it does not already have a channel for the sync trace */
                                if (!rightProc.Channels.Any(p => p.PublicTrace == syncTrace))
                                {
                                    /* Create a channel for the right process */
                                    Channel chanRight = new Channel(rightProc, syncTrace);
                                    /* Add a channel to the right process */
                                    rightProc.AddChannel(chanRight);

                                    if (!Channels.Any(p => p.Name == chanRight.Name))
                                    {
                                        Channels.Add(chanRight);
                                    }
                                }
                            }
                        }

                        bRetVal = true;
                    }
                }
            }

            return bRetVal;
        }

        string GetTrace(string trace)
        {
            return trace.TrimEnd(new char[] { '!', '?' });
        }

        /* This function generates the process definitions together with the new system definition */
        public string GenerateOutput()
        {
            StringBuilder sb = new StringBuilder();

            /* Add the new process definitions */
            foreach (var proc in Processes)
            {
                sb.AppendLine(proc.ToDefinition());
            }

            /* Blank Line */
            sb.AppendLine();

            foreach (var chan in Channels)
            {
                sb.AppendLine(chan.ToDefinition());
            }

            /* Blank Line */
            sb.AppendLine();

            /* Now append the new system definition */
            sb.Append(systemDefinition.Name);
            sb.Append(" = ");

            /* All processes as interleaved */
            sb.Append("( ");
            for (int i = 0; i < Processes.Count - 1; i++ )
            {
                sb.Append(String.Format("{0} ||| ", Processes[i].Name));
            }
            sb.Append(String.Format("{0} )", Processes[Processes.Count - 1].Name));

            /* General Parallel with all the channels */
            sb.Append(String.Format(" [| {{{0}}} |] ", FormatPrivateChannelSyncSet(Channels)));

            /* General Parallel of ALL the channels */
            sb.Append("( ");
            for (int i = 0; i < Channels.Count - 1; i++)
            {
                sb.Append(String.Format("{0} [| {{{1}}} |] ", Channels[i].Name, FormatPublicChannelSyncSet(Channels)));
            }
            sb.AppendLine(String.Format("{0} )", Channels[Channels.Count - 1].Name));

            /* Blank Line */
            sb.AppendLine();

            sb.AppendLine(String.Format("MAIN = {0}", systemDefinition.Name));

            /* Blank Line */
            sb.AppendLine();

            /* First we add the channel definition for CSPM */
            sb.AppendLine(String.Format("channel {0}", GenerateTraceList()));

            return sb.ToString();
        }

        private string GenerateTraceList()
        {
            List<String> channelList = new List<string>();
            StringBuilder sb = new StringBuilder();

            /* Add all the trace names from the processes */
            foreach (var proc in Processes)
            {
                foreach (var trace in proc.Symbols.Where(p => p.Type == Symbol.enSymbolType.Trace))
                {
                    channelList.Add(trace.Value);
                }
            }

            /* Add all the trace names from the channels */
            foreach (var chan in Channels)
            {
                foreach (var trace in chan.Symbols.Where(p => p.Type == Symbol.enSymbolType.Trace))
                {
                    channelList.Add(trace.Value);
                }
            }

            /* Ensure that the list is distinct */
            channelList = channelList.Distinct().ToList();

            for (int i = 0; i < channelList.Count - 1; i++)
            {
                sb.Append(String.Format("{0}, ", channelList[i]));
            }
            sb.Append(String.Format("{0}", channelList[channelList.Count - 1]));

            return sb.ToString();
        }

        private string FormatPrivateChannelSyncSet(List<Channel> input)
        {
            StringBuilder sb = new StringBuilder();

            /* Generate a flat list of string with all the names */
            List<String> distictList = new List<string>();
            foreach (var item in input)
            {
                distictList.Add(item.PrivateTrace);
            }

            distictList = distictList.Distinct().ToList();

            for (int i = 0; i < distictList.Count - 1; i++)
            {
                sb.Append(String.Format("{0}, ", distictList[i]));
            }
            sb.Append(String.Format("{0}", distictList[distictList.Count - 1]));

            return sb.ToString();
        }

        private string FormatPublicChannelSyncSet(List<Channel> input)
        {
            StringBuilder sb = new StringBuilder();

            /* Generate a flat list of string with all the names */
            List<String> distictList = new List<string>();
            foreach (var item in input)
            {
                distictList.Add(item.PublicTrace);
            }

            distictList = distictList.Distinct().ToList();

            for (int i = 0; i < distictList.Count - 1; i++)
            {
                sb.Append(String.Format("{0}, ", distictList[i]));
            }
            sb.Append(String.Format("{0}", distictList[distictList.Count - 1]));

            return sb.ToString();
        }

        private String FormatSyncSet(List<String> input)
        {
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < input.Count - 1; i++)
            {
                sb.Append(String.Format("{0}, ", input[i]));
            }
            sb.Append(String.Format("{0}", input[input.Count - 1]));

            return sb.ToString();
        }
    }
}
