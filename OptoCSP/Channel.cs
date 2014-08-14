using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OptoCSP
{
    public class Channel
    {
        /* The types of channel definitions */
        public enum enChannelType
        {
            Transmit,
            Receive,
            Transceive
        }

        /* This is the symbols of the channel definition */
        public List<Symbol> Symbols { get; set; }

        /* This is the name of the channel */
        public String Name { get; set; }

        /* This is the master process of the channel */
        public Process Master { get; set; }

        /* This is the string representation of the symbols of the channel */
        public String channelString { get; private set; }

        /* This is the type indicator of the channel */
        public enChannelType ChanType { get; private set; }      

        /* This is the public trace for which this channel is creates */
        public String PublicTrace { get; private set; }

        /* This is the private trace for which this channel is creates */
        public String PrivateTrace { get; private set; }

        public Channel()
        {
            Symbols = new List<Symbol>();
        }
        
        public Channel(Process masterProcess, string trace)
        {
            Symbols = new List<Symbol>();

            this.Master = masterProcess;
            this.PublicTrace = trace;

            trace = masterProcess.GetRealTrace(trace);

            /* The channel type is determined from the sync trace */
            if (trace.Contains("!"))
            {
                this.ChanType = enChannelType.Transmit;
                this.PrivateTrace = String.Format("{0}_{1}", trace.TrimEnd(new char[] { '!' }), Master.Name.ToLower()[0]); /* Example: comm! --> comm_p! */
            }
            else if (trace.Contains("?"))
            {
                this.ChanType = enChannelType.Receive;
                this.PrivateTrace = String.Format("{0}_{1}", trace.TrimEnd(new char[] { '?' }), Master.Name.ToLower()[0]); /* Example: comm_p */
            }
            else
            {
                this.ChanType = enChannelType.Transceive;
                this.PrivateTrace = String.Format("{0}_{1}", trace, Master.Name.ToLower()[0]); /* Example: comm_p */
            }

            /* Get a name for this channel */
            /* Example: CHP(comm) */
            this.Name = String.Format("CH{0}_{1}", Master.Name.ToUpper(), trace.TrimEnd(new char[] { '!', '?' }));
        }

        /* This function returns a channel definition, depending on this channel type */
        public string ToDefinition()
        {
            StringBuilder sb = new StringBuilder();

            PrepareSymbols(ChanType);

            for (int i = 0; i < Symbols.Count; i++)
            {
                sb.Append(Symbols[i].Value);
                sb.Append(" ");
            }

            return sb.ToString().Trim();
        }

        private void PrepareSymbols(enChannelType channelType)
        {
            switch (channelType)
            {
                case enChannelType.Transmit:
                    {
                        String definitionString = String.Format(@"{0} = {1} -> ( ( {2} -> {0} ) [] ( {0} ) )", this.Name, PrivateTrace, PublicTrace);
                        Symbols = Validate(definitionString);
                    }
                    break;

                case enChannelType.Receive:
                    {
                        String definitionString = String.Format(@"{0} = {1} -> ( ( {2} -> {0} ) [] ( {0} ) )", this.Name, PublicTrace, PrivateTrace);
                        Symbols = Validate(definitionString);
                    }
                    break;

                case enChannelType.Transceive:
                    {
                        String definitionString = String.Format(@"{0} = ( {1} -> ( ( {2} -> {0} ) [] ( {0} ) ) ) [] ( {2} -> ( ( {1} -> {0} ) [] ( {0} ) ) )", this.Name, PublicTrace, PrivateTrace);
                        Symbols = Validate(definitionString);
                    }
                    break;

                default:
                    break;
            }
        }

        private List<Symbol> Validate(String definitionString)
        {
            List<Symbol> retList = new List<Symbol>();

            /* Tokenise the string */
            String[] operands = definitionString.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

            if (operands[1] == "=")
            {
                /* Iterate through the list */
                foreach (String operand in operands)
                {
                    retList.Add(new Symbol(operand));
                }

                /* This process' name is the first item */
                this.Name = retList[0].Value;
                retList[0].Type = Symbol.enSymbolType.Process;

                /* Set the type of all occurrances of this process */
                foreach (var item in retList)
                {
                    if (item.Value == this.Name)
                    {
                        item.Type = Symbol.enSymbolType.Process;
                    }
                }
            }

            return retList;
        }

        public override string ToString()
        {
            return channelString;
        }
    }
}
