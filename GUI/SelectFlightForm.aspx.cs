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
    public partial class SelectFlightForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelFN.Text = Session["FlightId"].ToString();
            LabelDep.Text = Session["DepCity"].ToString();
            LabelArr.Text = Session["ArrCity"].ToString();
            LabelDt.Text = (Session["FlightDateA"]).ToString(); 
            LabelPr.Text = Session["Price"].ToString();
            ButtonSignOut.Visible = false;
            LabelDept.Text = Session["DepT"].ToString();
            LabelArrT.Text = Session["ArrT"].ToString();
            LabelPeople.Text = Session["PeopleNumber"].ToString()+" passenger(s) in total.";


           
            if (Session["Return"].ToString() == "True")
            {
                LabelTotalPrice.Text ="$"+ ((Convert.ToInt32(Session["PeopleNumber"]) * Convert.ToInt32(Session["Price"])) + ( Convert.ToInt32(Session["PeopleNumber"]) * Convert.ToInt32(Session["RPrice"]))).ToString();
                var rpx1 = 0.16 * ((Convert.ToInt32(Session["PeopleNumber"]) * Convert.ToInt32(Session["Price"])) + (Convert.ToInt32(Session["PeopleNumber"]) * Convert.ToInt32(Session["RPrice"])));
                LabelTax.Text =  "$"+ rpx1.ToString()  ;
                var tt = (rpx1 / 0.16) * 1.16;
                LabelGT.Text = "$"+tt.ToString();
            }
            else
            {
                LabelTotalPrice.Text ="$"+ ( Convert.ToInt32(Session["PeopleNumber"]) * (Convert.ToInt32(Session["Price"]))).ToString();
               var rpx2 = 0.16 * ((Convert.ToInt32(Session["PeopleNumber"]) * Convert.ToInt32(Session["Price"])));
                LabelTax.Text =   "$"+rpx2.ToString();
                var tt = (rpx2 / 0.16) * 1.16;
                LabelGT.Text = "$" + tt.ToString();
            }
            
           // int tt = (Convert.ToInt32(LabelTotalPrice.Text)) + (Convert.ToInt32(LabelTax.Text));
          //  LabelGT.Text = tt.ToString();
            if (Session["UserFN"] != null)
            {
                LabelUser.Text = "Hello, " + Session["UserFN"].ToString();
                ButtonSignin.Visible = false;
                ButtonSignUp.Visible = false;
                ButtonSignOut.Visible = true;
            }

            //--------------------return flight

            if (Session["Return"].ToString() == "True")
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

        protected void ButtonSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"LoginForm.aspx");
        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"SignUpFormR.aspx");
        }

        protected void ButtonSignOut_Click(object sender, EventArgs e)
        {
            MessageBox.Show("You will be signed out.");

            Session.Clear();
            Response.Redirect(@"test.aspx");
        }

        protected void ButtonPur_Click(object sender, EventArgs e)
        {
            if (Session["UserFN"] == null)
            {
                MessageBox.Show("Please Sign In First!");
            }
            else
            {
                int UId = Convert.ToInt32(Session["UserId"]);

                int SFId = Convert.ToInt32(Session["SFId"]);


                UserFlight usf = new UserFlight();
                usf.UId = UId;
                usf.SFId = SFId;
                usf.PurchaseTicket(usf);
                if (Session["RFlightId"] != null)
                {
                    int RUId = Convert.ToInt32(Session["UserId"]);
                    int RSFId = Convert.ToInt32(Session["RSFId"]);
                    UserFlight usrf = new UserFlight();
                    usrf.UId = RUId;
                    usrf.SFId = RSFId;
                    usrf.PurchaseTicket(usrf);
                }
                Response.Redirect(@"PurchaseFlight.aspx");
            }
        }
    }
}