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
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void TextBoxPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {

            string inputEmail = TextBoxEmail.Text.Trim();
            string inputPass = TextBoxPassword.Text.Trim();
            string error = "";
            User user = new User();
            user = user.SearchUser(inputEmail);

            if (user != null &&
                user.UserEmail == inputEmail &&
                user.Password == inputPass )
            {
                Session["UserFN"] = user.UserFirstName;
                Session["UserLN"] = user.UserLastName;
                Session["UserId"] = user.UserId;
                Session["UserEmail"] = user.UserEmail;
                if (Session["FlightId"]!= null)
                {
                    Response.Redirect(@"ShowFlightsForm.aspx");
                }
                else
                {
                    //Response.Redirect(@"MainForm.aspx");
                    Response.Redirect(@"test.aspx");
                }
                   
            }
            else
            {
                MessageBox.Show("User not found!", "Invalid User Name");
            }




            //Response.Redirect(@"MainForm.aspx");
        }

        protected void ButtonSignin_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {

        }
    }
}