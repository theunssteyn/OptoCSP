using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OptoCSP
{
    public class SyntaxChecker
    {
        public List<Process> processList { get; set; }
        public SystemDef system { get; set; }
        
        private String systemString = String.Empty;

        public SyntaxChecker(String inputString)
        {
            processList = new List<Process>();
            system = new SystemDef();
            systemString = inputString;
        }

        /* This function checks the syntax of the string.
         * The following criteria are checked:
         * 1. Start of file contains "PROCESS:" without quotes
         * 2. Process definition check
         *   2.a. Process name, followed by '='
         * 3. System definition contains the "SYSTEM:" heading without quotes
         * 4. System definition check
         *   4.a. System definition name, followed by '='
         *   4.b. System definition contains processes defined in 2.a.
         */
        public bool Check()
        {
            String[] lines = systemString.Split(new char[] { '\r','\n' }, StringSplitOptions.RemoveEmptyEntries);
            processList = new List<Process>();
            system = new SystemDef();
            
            if (lines[0] == "PROCESS:")
            {
                int index = 1;
                while((index < lines.Length) && (lines[index] != "SYSTEM:"))
                {
                    /* Validate the process defintiion */
                    Process proc = new Process(lines[index]);
                    if (proc.Validate())
                    {
                        /* Add the process to the list */
                        processList.Add(proc);
                    }
                    else
                    {
                        throw new Exception("The process validation failed!");
                    }
                    index++;
                }

                if (index >= lines.Length)
                {
                    throw new Exception("The input file does not hava a \"SYSTEM:\" definition.");
                }

                /* Look for SYSTEM definition */
                if (lines[index] == "SYSTEM:")
                {
                    index++;

                    system.DefinitionString = lines[index];
                    if (!system.Validate())
                    {
                        throw new Exception("The system validation failed!");
                    }
                }
                else
                {
                    throw new Exception("The input file does not hava a \"SYSTEM:\" definition.");
                }
            }
            else
            {
                throw new Exception("The input file does not start with \"PROCESS:\".");
            }

            return true;
        }
    }
}
