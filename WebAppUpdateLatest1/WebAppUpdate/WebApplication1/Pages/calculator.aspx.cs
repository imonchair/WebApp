using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Pages
{
    public partial class calculator : System.Web.UI.Page
    {
        string v1, v2, leftPowerValue, rightPowerValue;
        char operation = 'n'; //This is set as n blank purely so leftPowerClick can operate
        string input;
        int count = 0;
        double num1, num2; //This gives global scope prevents squared numbers being overwritten!
        bool decCount = false;
        bool negSign = false;
        bool leftTrigClick = false, rightTrigClick = false, trigClick = true;
        string trigValue; //Used with inverse
        bool trigInverse = false;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Num9_Click(object sender, EventArgs e)
        {
            input += 9;
            DisplayWindow.Text = DisplayWindow.Text + "9";
        }

        protected void Num8_Click(object sender, EventArgs e)
        {
            input += 8;
            DisplayWindow.Text = DisplayWindow.Text + "8";
        }

        protected void Num7_Click(object sender, EventArgs e)
        {
            input += 7;
            DisplayWindow.Text = DisplayWindow.Text + "7";
        }

        protected void Num6_Click(object sender, EventArgs e)
        {
            input += 6;
            DisplayWindow.Text = DisplayWindow.Text + "6";
        }

        protected void Num5_Click(object sender, EventArgs e)
        {
            input += 5;
            DisplayWindow.Text = DisplayWindow.Text + "5";
        }

        protected void Num4_Click(object sender, EventArgs e)
        {
            input += 4;
            DisplayWindow.Text = DisplayWindow.Text + "4";
        }

        protected void Num3_Click(object sender, EventArgs e)
        {
            input += 3;
            DisplayWindow.Text = DisplayWindow.Text + "3";
        }

        protected void Num2_Click(object sender, EventArgs e)
        {
            input += 2;
            DisplayWindow.Text = DisplayWindow.Text + "2";
        }

        protected void Num1_Click(object sender, EventArgs e)
        {
            input += 1;
            DisplayWindow.Text = DisplayWindow.Text + "1";
        }

        protected void Cull_Click(object sender, EventArgs e)
        {
            //Kill Everything
            v1 = string.Empty;
            v2 = string.Empty;
            DisplayWindow.Text = string.Empty;
            input = string.Empty;
            decCount = false;
            negSign = false;
            operation = 'n'; //default back to 'n' so y^x continues to operate normally
            leftTrigClick = false;
            rightTrigClick = false;
            trigInverse = false;
            trigClick = false;
        }

        protected void Plus_Click(object sender, EventArgs e)
        {
            //On click will plus
            operation = '+';

            if (leftTrigClick == false)
            {
                v1 = input;
            }
            input = string.Empty;
            decCount = false;
            negSign = false;
            DisplayWindow.Text = "";
        }

        protected void Sub_Click(object sender, EventArgs e)
        {
            operation = '-';
            if (leftTrigClick == false)
            {
                v1 = input;
            }
            input = string.Empty;
            count = 0;
            negSign = false;
            DisplayWindow.Text = "";
        }

        protected void Multiply_Click(object sender, EventArgs e)
        {
            operation = '*';
            if (leftTrigClick == false)
            {
                v1 = input;
            }
            input = string.Empty;
            decCount = false;
            negSign = false;
            DisplayWindow.Text = "";
        }

        protected void Div_Click(object sender, EventArgs e)
        {
            operation = '/';
            if (leftTrigClick == false)
            {
                v1 = input;
            }
            input = string.Empty;
            decCount = false;
            negSign = false;
            DisplayWindow.Text = "";
        }

        protected void Results_Click(object sender, EventArgs e)
        {
            double result = 0;


            if (trigClick == true)
            {
                if (leftTrigClick == true)
                {
                    if (trigInverse == true) // if this is true then inverse trigonometry is used. 
                    {
                        if (trigValue == "sin")
                        {
                            num1 = Math.Asin(num1 * Math.PI / 180);
                        }
                        if (trigValue == "cos")
                        {
                            num1 = Math.Acos(num1 * Math.PI / 180);
                        }
                        if (trigValue == "tan")
                        {
                            num1 = Math.Atan(num1 * Math.PI / 180);
                        }
                    }
                    if (trigInverse == false)
                    {
                        if (trigValue == "sin")
                        {
                            num1 = Math.Sin(num1 * Math.PI / 180);
                        }
                        if (trigValue == "cos")
                        {
                            num1 = Math.Cos(num1 * Math.PI / 180);
                        }
                        if (trigValue == "tan")
                        {
                            num1 = Math.Tan(num1 * Math.PI / 180);
                        }
                    }

                    if (rightTrigClick == true)
                    {
                        if (trigValue == "sin")
                        {
                            num2 = Math.Sin(num2 * Math.PI / 180);
                        }
                        if (trigValue == "cos")
                        {
                            num1 = Math.Cos(num2 * Math.PI / 180);
                        }
                        if (trigValue == "tan")
                        {
                            num1 = Math.Tan(num2 * Math.PI / 180);
                        }
                    }
                }

                v2 = input; //assigns the second string entered to v2

                if (leftTrigClick == false)
                {
                    double.TryParse(v1, out num1); //assigns num1 with the contents of string v1

                }
                if (rightTrigClick == false)
                {
                    double.TryParse(v2, out num2); //assigns num2 with the contents of string v2
                }


                if (operation == '+')
                {
                    result = num1 + num2;
                    DisplayWindow.Text = result.ToString();
                    decCount = false;
                    negSign = false;
                }

                if (operation == '-')
                {
                    result = num1 - num2;
                    DisplayWindow.Text = result.ToString();
                    decCount = false;
                    negSign = false;
                }

                if (operation == '*')
                {
                    result = num1 * num2;
                    DisplayWindow.Text = result.ToString();
                    decCount = false;
                    negSign = false;
                }

                if (operation == '/')
                {
                    result = num1 / num2;
                    DisplayWindow.Text = result.ToString();
                    decCount = false;
                    negSign = false;
                }

                input = result.ToString();
            }

        }








    }
}

