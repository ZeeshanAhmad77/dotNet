using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calculate_Click(object sender, EventArgs e)
        {
          Double X = Convert.ToDouble( firstNumber.Text);
          Double Y = Convert.ToDouble(secondNumber.Text);
          string oper = operation.Text;

          switch(oper)
            {
                case "add":
                    answer.Text = Convert.ToString(X + Y);
                    break;
                case "subtract":
                    answer.Text = Convert.ToString(X - Y);
                    break;
                case "multiply":
                    answer.Text = Convert.ToString(X * Y);
                    break;
                case "divide":
                    answer.Text = Convert.ToString(X / Y);
                    break;
                default:
                    answer.Text = "Must select an operation";
                    break;
            }

        }
    }
}