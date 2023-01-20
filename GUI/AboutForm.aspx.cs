using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace ProjectCAA_Airlines.GUI
{
    public partial class AboutForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserFN"] != null)
            {
                LabelUser.Text = "Hello, " + Session["UserFN"].ToString();
                ButtonSignin.Visible = false;
                ButtonSignUp.Visible = false;
            }
        }

        protected void ButtonSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"LoginForm.aspx");
        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"SignUpFormR.aspx");
        }

        protected void ButtonBook_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"test.aspx");
        }

        protected void ButtonGroupSale_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonMyTickets_Click(object sender, EventArgs e)
        {
            if (Session["UserFN"] != null)
            {
                Response.Redirect(@"UserFlights.aspx");
            }
            else
            {
                MessageBox.Show("Please Login first.");

            }
        }

        protected void ButtonAbout_Click(object sender, EventArgs e)
        {

        }
    }
}