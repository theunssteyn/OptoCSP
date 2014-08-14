using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OptoCSP
{
    public class Symbol
    {
        public enum enSymbolType
        {
            None,
            Process,
            Operator,
            Trace
        }

        public List<String> SymbolDefinition = new List<string>() { "=", "->", "||", "|||", "[]", "|~|", ";", "(", ")", "[|", "|]", "[|||", "|||]" };

        public String Value { get; set; }
        public enSymbolType Type { get; set; }
        
        public Symbol()
        {
            this.Type = enSymbolType.None;
            this.Value = null;
        }

        public Symbol(string operand)
        {
            this.Value = operand;

            /* Check the type */
            if (SymbolDefinition.Any(p => p == operand))
            {
                this.Type = enSymbolType.Operator;
            }
            else if (operand.Contains("[|||"))
            {
                this.Type = enSymbolType.Operator;
            }
            else
            {
                this.Type = enSymbolType.Trace;
            } 
        }
    }
}
