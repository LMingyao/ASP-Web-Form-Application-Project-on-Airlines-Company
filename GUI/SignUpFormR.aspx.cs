using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using ProjectCAA_Airlines.BLL;


namespace ProjectCAA_Airlines.GUI
{
    public partial class SignUpFormR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
           

           
           if( TextBoxFN.Text.Length != 0  &&
                     TextBoxLN.Text.Length != 0 &&
                     TextBoxEmail.Text.Length != 0 &&
                     TextBoxPassword.Text.Length != 0 )
            {
                string usFN = TextBoxFN.Text.ToString();
                string usLN = TextBoxLN.Text.ToString();
                string usEM = TextBoxEmail.Text.ToString();
                string usPS = TextBoxPassword.Text.ToString();
                User us = new User();
                us.UserFirstName = usFN;
                us.UserLastName = usLN;
                us.UserEmail = usEM;
                us.Password = usPS;
                us.SaveUser(us);
                MessageBox.Show("You has been signed up successfully and you have been login automatically");
                Session["UserFN"] = us.UserFirstName;
                Session["UserLN"] = us.UserLastName;
                Session["UserId"] = us.UserId;
                Session["UserEmail"] = us.UserEmail;

                if (Session["FlightId"] != null)
                {
                    Response.Redirect(@"ShowFlightsForm.aspx");
                }
                else
                {
                    // Response.Redirect(@"MainForm.aspx");
                    Response.Redirect(@"test.aspx");
                }
            }
            else 
            {
                MessageBox.Show("Please fill out all information in the page.");

            }



        }
    }
}