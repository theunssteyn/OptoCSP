using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OptoCSP
{
    public class Process
    {

        public String processString;
        public List<Symbol> Symbols { get; set; }
        public String Name { get; set; }

        public List<Channel> Channels { get; set; }

        public Process(String inputString)
        {
            Symbols = new List<Symbol>();
            Channels = new List<Channel>();

            processString = inputString;
        }

        /* This function adds a channel, but also renames the corresponding trace */
        public void AddChannel(Channel channel)
        {
            /* Check if the channel exists in the list, only add if not */
            if (!Channels.Any(p => p.Name == channel.Name))
            {
                /* Add the channel */
                this.Channels.Add(channel);
                /* Rename the sync trace */
                foreach (var item in Symbols)
                {
                    if (item.Value.Contains(channel.PublicTrace))
                    {
                        item.Value = channel.PrivateTrace;
                    }
                }
            }
        }

        /* This function verifies the process definition */
        public bool Validate()
        {
            bool bRetVal = false;

            if (!String.IsNullOrEmpty(processString))
            {
                /* Tokenise the string */
                String[] operands = processString.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

                if (operands[1] == "=")
                {
                    /* Iterate through the list */
                    foreach (String operand in operands)
                    {
                        Symbols.Add(new Symbol(operand));
                    }

                    /* This process' name is the first item */
                    this.Name = Symbols[0].Value;
                    Symbols[0].Type = Symbol.enSymbolType.Process;

                    /* Set the type of all occurrances of this process */
                    foreach (var item in Symbols)
                    {
                        if (item.Value == this.Name)
                        {
                            item.Type = Symbol.enSymbolType.Process;
                        }
                    }

                    bRetVal = true;
                }
                else
                {
                    /* The second operand is not "=" */
                    bRetVal = false;
                }
            }
            else
            {
                bRetVal = false;
            }

            return bRetVal;
        }

        public override string ToString()
        {
            return processString;
        }

        /* This function renames a given trace to an internal name and returns the new name */
        internal string RenameTrace(string syncTrace)
        {
            /* Get the trace with the given name */
            Symbol symb = Symbols.First(p => (p.Value == syncTrace) && (p.Type == Symbol.enSymbolType.Trace));
            
            /* Rename the trace */
            String newTrace = String.Format("{0}_{1}",syncTrace,this.Name.ToLower());
            symb.Value = newTrace;

            return newTrace;
        }

        /* This function generates a defintiion of this process */
        internal string ToDefinition()
        {
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < Symbols.Count; i++)
            {
                sb.Append(Symbols[i].Value);
                sb.Append(" ");
            }

            return sb.ToString().Trim();
        }

        /* This function matches the trace to a possible transmit or receive trace */
        internal string GetRealTrace(string trace)
        {
            String retString = trace;

            if (Symbols.Any(p => p.Value.Contains(trace)))
            {
                retString = Symbols.First(p => p.Value.Contains(trace)).Value;
            }

            return retString;
        }
    }
}
