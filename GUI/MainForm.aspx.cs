using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using ProjectCAA_Airlines.BLL;

using System.Web.UI.WebControls;
using System.Windows;

namespace ProjectCAA_Airlines.GUI
{
    public partial class MainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
               
            if (!IsPostBack)
            {
                DropDownListArr.Text = "";
                DropDownListDep.Text = "";
                CalendarArr.Visible = false;
                TextBoxRD.Visible = false;
                ImageButtonRD.Visible = false;
                rdbtnOW.Checked = true;
                Label8.Visible = false;

                CalendarDep.Visible = false;


                DateTime today = DateTime.Today;
                CalendarDep.TodaysDate = today;
                CalendarDep.SelectedDate = CalendarDep.TodaysDate;

               
                if (Session["UserFN"]!= null)
                {
                    LabelUser.Text = "Hello, " + Session["UserFN"].ToString();
                    ButtonSignin.Visible = false;
                    ButtonSignUp.Visible = false;
                }
           
            }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            bool rtn = false;
            Flight fl = new Flight();
            string inputA = DropDownListDep.Text;
            string inputB = DropDownListArr.Text;
            string a = inputA;
            string b = inputB;
            string dt = CalendarDep.SelectedDate.ToString();
            fl= fl.SearchFlight(a,b);
            FlightSchedule fs = new FlightSchedule();
            fs = fs.SearchFlight(fl.FId,dt);
            Session["FlightId"] = fl.FId;
            Session["DepCity"] = fl.DepCity;
            Session["ArrCity"] = fl.ArrCity;
            Session["FlightDate"] = fs.FlightDate;
            Session["Price"] = fs.Price;
            Session["SFId"] = fs.SFId;

            //MessageBox.Show("Flight Number: "+fl.FId+", from " +fl.DepCity +", to "+fl.ArrCity+", Date: "+fs.FlightDate+", Price: "+fs.Price);


            //--------------------------------------------Return
            if (TextBoxRD.Visible==true)
            {
                string Rt = CalendarArr.SelectedDate.ToString();
                fl = fl.SearchFlight(b, a);
                fs = fs.SearchFlight(fl.FId, Rt);
                //MessageBox.Show("Flight Number: " + fl.FId + ", from " + fl.DepCity + ", to " + fl.ArrCity + ", Date: " + fs.FlightDate + ", Price: " + fs.Price);
                Session["RFlightId"] = fl.FId;
                Session["RDepCity"] = fl.DepCity;
                Session["RArrCity"] = fl.ArrCity;
                Session["RFlightDate"] = fs.FlightDate;
                Session["RPrice"] = fs.Price;
                Session["RSFId"] = fs.SFId;
                rtn = true;
            }

            Session["UserIDR"] = Session["UserId"];
            Session["Return"] = rtn.ToString();
            Response.Redirect(@"ShowFlightsForm.aspx");
           // MessageBox.Show(Session["FlightId"].ToString());

            //MessageBox.Show(fs.FId+ fs.SFId);

            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"LoginForm.aspx");
        }

        protected void rdbtnRP_CheckedChanged(object sender, EventArgs e)
        {
            // CalendarArr.Visible = false;

        }

        protected void ButtonRP_Click(object sender, EventArgs e)
        {
            //CalendarArr.Visible = true;
            TextBoxRD.Visible = true;
            ImageButtonRD.Visible = true;
            Label8.Visible = true;
        }

        protected void CalendarDep_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxTD.Text = CalendarDep.SelectedDate.ToString("MM/dd/yyyy");
            CalendarDep.Visible = false;

        }

        protected void ImageButtonTD_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarDep.Visible)
            {
                CalendarDep.Visible = false;
                
            }
            else
            {

                CalendarDep.Visible = true;
            }
            CalendarDep.Attributes.Add("style", "position:absolute");

        }

        protected void ImageButtonRD_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarArr.Visible)
            {
                CalendarArr.Visible = false;

            }
            else
            {

                CalendarArr.Visible = true;
            }
            CalendarArr.Attributes.Add("style", "position:absolute");
        }

        protected void CalendarArr_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxRD.Text = CalendarArr.SelectedDate.ToString("MM/dd/yyyy");
            CalendarArr.Visible = false;
        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"SignUpFormR.aspx");
        }

        protected void ButtonBook_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"MainForm.aspx");
        }

        protected void ButtonGroupSale_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonMyTickets_Click(object sender, EventArgs e)
        {
             
          

        }

        protected void ButtonAbout_Click(object sender, EventArgs e)
        {

        }
    }
}