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
    public partial class ShowFlightsForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelFN.Text = Session["FlightId"].ToString();
            LabelDep.Text =    Session["DepCity"].ToString();
            LabelArr.Text = Session["ArrCity"].ToString();
            LabelDt.Text = Session["FlightDateA"].ToString();
            LabelPr.Text = Session["Price"].ToString();
            ButtonSignOut.Visible = false;

            LabelDepT.Text = Session["DepT"].ToString();
            LabelArrT.Text = Session["ArrT"].ToString();




            if (Session["UserFN"] != null)
            {
                LabelUser.Text = "Hello, " + Session["UserFN"].ToString();
                ButtonSignin.Visible = false;
                ButtonSignUp.Visible = false;
                ButtonSignOut.Visible = true;
            }

            //--------------------return flight

            if (Session["Return"].ToString()=="True")
            {
                
                LabelFNR.Text = Session["RFlightId"].ToString();
                LabelDepR.Text = Session["RDepCity"].ToString();
                LabelArrR.Text = Session["RArrCity"].ToString();
                LabelDtR.Text = Session["FlightDateAR"].ToString();
                LabelPrR.Text = Session["RPrice"].ToString();

                LabelDepTR.Text = Session["DepTR"].ToString();
                LabelArrTR.Text = Session["ArrTR"].ToString();
            }
            else
            {
                Labela.Visible = false;
                LabelFNR.Visible = false;
                LabelDepR.Visible = false;
                LabelArrR.Visible = false;
                LabelDtR.Visible = false;
                LabelPrR.Visible = false;
                Labelb.Visible = false;
                Labelh1.Visible = false;
                Labelh2.Visible = false;
                Labelh3.Visible = false;
                Labelh4.Visible = false;
                Labelh5.Visible = false;
                Label6.Visible = false;
                Label8.Visible = false;
                LabelDepTR.Visible = false;
                LabelArrTR.Visible = false;

            }


        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"test.aspx");
        }

        protected void ButtonSg_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"LoginForm.aspx");
        }

        protected void ButtonSgU_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"SignUpFormR.aspx");
        }

        protected void ButtonPur_Click(object sender, EventArgs e)
        {
             
                Response.Redirect(@"SelectFlightForm.aspx");
            
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
            Response.Redirect(@"AboutForm.aspx");
        }

        protected void ButtonSignOut_Click(object sender, EventArgs e)
        {
            MessageBox.Show("You will be signed out.");

            Session.Clear();
            Response.Redirect(@"test.aspx");
        }
    }
}