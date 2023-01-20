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
    public partial class UserFlights : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // gvListOfComponent.Columns.Visible = false;
           
            int UId = Convert.ToInt32(Session["UserId"]);
            UserFlight usaf = new UserFlight();
            if (UId > 0)
            {
                List<FlightSchedule> listUF = usaf.GetFlights(UId);
                gvListOfComponent.DataSource = listUF;
               // MessageBox.Show(listUF.ToString());
                gvListOfComponent.DataBind();
                //gvListOfComponent.Columns.RemoveAt(0);
                ListView1.Items.Clear();
                if (listUF.Count != 0)
                {
                    //foreach (UserFlight u_item in listUF)
                    //{
                    //    ListViewItem item = new ListViewItem(Convert.ToInt32(u_item.UId));
                    //    item.SubItems.Add(u_item.UserPassword);
                    //    item.SubItems.Add(u_item.EmployeeID.ToString());
                    //    listViewUser.Items.Add(item);

                    //}
                }
                else
                {
                    LabelDisNo.Text = ("You currently do not have any records of flights");
                    return;
                }
            }
            else
            {
                LabelDisNo.Text = ("You currently do not have any records of flights");
            }

            if (gvListOfComponent.Visible == false)
            {
                LabelDisNo.Text = ("You currently do not have any records of flights");
            } 


            if (gvListOfComponent.DataSource!= null)
            {
                gvListOfComponent.Visible = true;

            }
           
                //gvListOfComponent.Columns[0].Visible = false;

                if (!IsPostBack)
            { 
                ButtonSignOut.Visible = false; 

                if (Session["UserFN"] != null)
                {
                    LabelUser.Text = "Hello, " + Session["UserFN"].ToString();
                    ButtonSignOut.Visible = true;
                    ButtonSignin.Visible = false;
                    ButtonSignUp.Visible = false;
                }

               
            }
        }

        protected void gvListOfComponent_SelectedIndexChanged(object sender, EventArgs e)
        {
            //gvListOfComponent.Columns[3].Visible = false;
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

        }

        protected void ButtonAbout_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"AboutForm.aspx");
        }

        protected void ButtonSignin_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonSignUp_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonSignOut_Click(object sender, EventArgs e)
        {

            MessageBox.Show("You will be signed out.");

            Session.Clear();
            Response.Redirect(@"test.aspx");
        }
    }
}