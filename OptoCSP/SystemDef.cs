using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OptoCSP
{
    public class SystemDef
    {
        public String systemString = String.Empty;
        public List<Symbol> Symbols { get; set; }
        public String Name { get; set; }

        public string DefinitionString
        {
            get
            {
                return this.systemString;
            }
            set
            {
                this.systemString = value;
            }
        }

        public SystemDef()
        {
            Symbols = new List<Symbol>();
        }

        public SystemDef(String inputString)
        {
            Symbols = new List<Symbol>();
            systemString = inputString;
        }

        public bool Validate()
        {
            bool bRetVal = false;
            if (!String.IsNullOrEmpty(systemString))
            {
                /* Tokenise the string */
                String[] operands = systemString.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

                /* Iterate through the list */
                foreach (String operand in operands)
                {
                    Symbols.Add(new Symbol(operand));
                }

                /* This process' name is the first item */
                this.Name = Symbols[0].Value;
                Symbols[0].Type = Symbol.enSymbolType.Process;

                /* Find all occurences of optional parallelism */
                foreach (var item in Symbols)
                {
                    if (item.Value == this.Name)
                    {
                        item.Type = Symbol.enSymbolType.Process;
                    }
                }

                return true;
            }
            else
            {
                bRetVal = false;
            }

            return bRetVal;
        }

        public override string ToString()
        {
            return systemString;
        }
    }
}
