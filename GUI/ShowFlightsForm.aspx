<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowFlightsForm.aspx.cs" Inherits="ProjectCAA_Airlines.GUI.ShowFlightsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
      <link href="assets/site.css" rel="stylesheet"/>
     <link href= "assets/_Layout.cshtml.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            width: 102px;
        }
        .auto-style2 {
            width: 121px;
        }
        .auto-style3 {
            height: 21px;
        }
        .auto-style4 {
            width: 121px;
            height: 21px;
        }
        .auto-style5 {
            width: 102px;
            height: 21px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <div class="container">
        <header>
            <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
                <div class="container-fluid">
                    <a class="navbar-brand" asp-area="" asp-controller="Home" asp-action="Index"><img src="../Stock/logo11.png" /></a>
             

                        <span class="navbar-toggler-icon"></span>
                    </button>
                     <asp:Button ID="ButtonSignin" runat="server" OnClick="ButtonSignin_Click" Text="Sign in" Width="144px" BackColor="White" BorderColor="White" BorderStyle="None" ForeColor="#00ACFD" />
                        <asp:Button ID="ButtonSignUp" runat="server" Text="Sign Up" OnClick="ButtonSignUp_Click" BackColor="White" BorderStyle="None" ForeColor="#00ACFD" />
                        <asp:Label ID="LabelUser" runat="server"></asp:Label>
                    <asp:Button ID="ButtonSignOut" runat="server" BackColor="White" BorderStyle="None" ForeColor="#00ACFD" OnClick="ButtonSignOut_Click" Text="Sign out" />
                    <div class="navbar-collapse collapse d-sm-inline-flex justify-content-between">
                        <ul class="navbar-nav flex-grow-1">
                            <asp:Button ID="ButtonBook" runat="server" OnClick="ButtonBook_Click" Text="Book" BackColor="#D1F1FF" BorderStyle="None" ForeColor="#00ACFD" />
                <asp:Button ID="ButtonGroupSale" runat="server" OnClick="ButtonGroupSale_Click" Text="Group-Sale" BackColor="#D1F1FF" BorderStyle="None" ForeColor="#00ACFD" />
                <asp:Button ID="ButtonMyTickets" runat="server" OnClick="ButtonMyTickets_Click" Text="My Tickets" BackColor="#D1F1FF" BorderStyle="None" ForeColor="#00ACFD" />
                <asp:Button ID="ButtonAbout" runat="server" OnClick="ButtonAbout_Click" Text="About" BackColor="#D1F1FF" BorderStyle="None" ForeColor="#00ACFD" />
                             
                        </ul>
                    </div>
                    <partial name="_LoginPartial"></partial>
                </div>
            </nav>
        </header>
    </div>
        </div>


        <table class="auto-style14">
            <tr>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="5">
                   
                </td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2" style="font-weight: bold; font-size: 16px">
                    <asp:Label ID="Labelb" runat="server" Text="Your First Flight"></asp:Label>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" Text="Flight Number"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="Labelh6" runat="server" Text="Departure City"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="Labelh7" runat="server" Text="Arrive City"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:Label ID="Labelh8" runat="server" Text="Flight Date"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Departure Time"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Arrival Time"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:Label ID="Labelh9" runat="server" Text="Price"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="LabelFN" runat="server"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="LabelDep" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="LabelArr" runat="server"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:Label ID="LabelDt" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="LabelDepT" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="LabelArrT" runat="server"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:Label ID="LabelPr" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2" style="font-weight: bold; font-size: 16px">
                    <asp:Label ID="Labela" runat="server" Text="Your Return Flight"></asp:Label>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Labelh1" runat="server" Text="Flight Number"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Labelh2" runat="server" Text="Departure City"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Labelh3" runat="server" Text="Arrive City"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Labelh4" runat="server" Text="Flight Date"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Departure Time"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="Arrival Time"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="Labelh5" runat="server" Text="Price"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="LabelFNR" runat="server"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="LabelDepR" runat="server"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="LabelArrR" runat="server"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:Label ID="LabelDtR" runat="server"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="LabelDepTR" runat="server"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="LabelArrTR" runat="server"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:Label ID="LabelPrR" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16"></td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style14">
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td>
                    <asp:Button ID="ButtonPur0" runat="server" OnClick="ButtonPur_Click" Text="Select this flight &gt;" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td>
                    <asp:Button ID="ButtonBack" runat="server" OnClick="ButtonBack_Click" Text="Start a new search" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
      
        <br />
        <br />
        <br />
    </form>
</body>
    <footer class="border-top footer text-muted">
        <div class="container">
            <div>
                
            </div>
            &copy; 2022 - Canadian Atlantic Airlines, All Rights Reserved - <a asp-area="" asp-controller="Home" asp-action="Privacy">Privacy</a>
        </div>
    </footer>
</html>
