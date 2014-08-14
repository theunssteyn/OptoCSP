using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OptoCSP
{
    public partial class Form1 : Form
    {
        private String inputString = String.Empty;
        private String outputString = String.Empty;

        public Form1()
        {
            InitializeComponent();
        }

        private void buttonLoad_Click(object sender, EventArgs e)
        {
            try
            {
                using (OpenFileDialog ofd = new OpenFileDialog())
                {
                    ofd.Filter = "CSP files (*.csp)|*.csp|All files (*.*)|*.*";
                    ofd.Title = "Please select a CSP file to convert.";

                    if (ofd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                    {
                        /* Set the statusstrip */
                        toolStripStatusLabelFileName.Text = ofd.FileName;
                        
                        /* Read the file */
                        TextReader tr = new StreamReader(ofd.FileName);
                        inputString = tr.ReadToEnd();
                        richTextBoxInput.Text = inputString;

                        /* No error up to this point, clear the GUI items */
                        textBoxProcessCount.Text = "0";
                        textBoxChannelCount.Text = "0";
                        richTextBoxOutput.Clear();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("The selected input file could not be opened.", "File Open Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            try
            {
                using (SaveFileDialog sfd = new SaveFileDialog())
                {
                    sfd.Filter = "CSP files (*.csp)|*.csp|All files (*.*)|*.*";
                    sfd.Title = "Please select a CSP file to save to.";

                    if (sfd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                    {
                        /* Write the file */
                        TextWriter tw = new StreamWriter(sfd.FileName);
                        tw.Write(outputString);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("The file could not be saved, please try a different location or filename.", "File Save Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void buttonConvert_Click(object sender, EventArgs e)
        {
            try
            {
                if (String.IsNullOrEmpty(richTextBoxInput.Text))
                {
                    MessageBox.Show("There is nothing to convert!", "No Input", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
                
                SyntaxChecker scheck = new SyntaxChecker(richTextBoxInput.Text);
                if (scheck.Check())
                {
                    /* The input file is converted into process and system definitions.
                     * Now it should be determined which processes should be converted
                     */
                    DefinitionAnalyser def = new DefinitionAnalyser(scheck.processList, scheck.system);
                    if (def.Analyse())
                    {
                        richTextBoxOutput.Text = def.GenerateOutput();
                        textBoxProcessCount.Text = def.Processes.Count.ToString();
                        textBoxChannelCount.Text = def.Channels.Count.ToString();
                    }
                    else
                    {
                        MessageBox.Show("The system could not be analysed, please check input file.", "Analysis Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                }
                else
                {
                    MessageBox.Show("A syntax error ocurred, please check input file.", "Syntax Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(String.Format("The conversion could not be performed. Please recheck the input file.\r\nException:\r\n{0}", ex.Message), "Conversion Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void buttonClear_Click(object sender, EventArgs e)
        {
            richTextBoxInput.Clear();
            richTextBoxOutput.Clear();
            textBoxProcessCount.Text = "0";
            textBoxChannelCount.Text = "0";
            toolStripStatusLabelFileName.Text = String.Empty;
        }
    }
}
