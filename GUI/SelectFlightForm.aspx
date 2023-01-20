<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectFlightForm.aspx.cs" Inherits="ProjectCAA_Airlines.GUI.SelectFlightForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="assets/site.css" rel="stylesheet"/>
     <link href= "assets/_Layout.cshtml.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            width: 4px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style5 {
            height: 21px;
            width: 95px;
        }
        .auto-style6 {
            width: 95px;
        }
        .auto-style7 {
            height: 21px;
            width: 111px;
        }
        .auto-style8 {
            width: 111px;
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
                <td colspan="2" style="font-size: 16px; font-weight: bold">
                    Please Confirm Your Itinerary</td>
                <td colspan="5">
                   
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2" style="font-weight: bold">
                    <asp:Label ID="Labelb" runat="server" Text="Your First Flight"></asp:Label>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Flight Number"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Labelh6" runat="server" Text="Departure City"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Labelh7" runat="server" Text="Arrive City"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Labelh8" runat="server" Text="Flight Date"></asp:Label>
                </td>
                <td class="auto-style7">
                    Departure Time</td>
                <td class="auto-style5">
                    Arrival Time</td>
                <td class="auto-style1">
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
                <td class="auto-style8">
                    <asp:Label ID="LabelDept" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
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
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="2" style="font-weight: bold">
                    <asp:Label ID="Labela" runat="server" Text="Your Return Flight"></asp:Label>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Labelh1" runat="server" Text="Flight Number"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="Labelh2" runat="server" Text="Departure City"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="Labelh3" runat="server" Text="Arrive City"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:Label ID="Labelh4" runat="server" Text="Flight Date"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label6" runat="server" Text="Departure Time"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="Arrival Time"></asp:Label>
                </td>
                <td class="auto-style21">
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
                <td class="auto-style8">
                    <asp:Label ID="LabelDepTR" runat="server"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Label ID="LabelArrTR" runat="server"></asp:Label>
                </td>
                <td class="auto-style21">
                    <asp:Label ID="LabelPrR" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="4">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="7" style="background-color: #D1F1FF; font-size: 24px; font-style: normal; font-weight: bold;">
                    Price Summary</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4" style="font-weight: bold">
                    <asp:Label ID="LabelPeople" runat="server"></asp:Label>
                </td>
                <td class="auto-style7" style="font-weight: bold">
                    &nbsp;</td>
                <td class="auto-style5" style="font-weight: bold">
                    &nbsp;</td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="4">
                    -----------------------------------------------------------------</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="4" style="font-weight: bold">
                    Flight</td>
                <td class="auto-style8" style="font-weight: bold">
                    &nbsp;</td>
                <td class="auto-style6" style="font-weight: bold">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    Air transportation charges:</td>
                <td class="auto-style12" colspan="2">
                    <asp:Label ID="LabelTotalPrice" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    Taxes, fees, and charges:</td>
                <td class="auto-style1" colspan="2">
                    <asp:Label ID="LabelTax" runat="server"></asp:Label>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="4">
                    -----------------------------------------------------------------</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2" style="font-size: 18px; font-weight: bold;">
                    Grand total:</td>
                <td class="auto-style12" colspan="2">
                    <asp:Label ID="LabelGT" runat="server"></asp:Label>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2" style="font-size: 18px; font-weight: bold;">
                    &nbsp;</td>
                <td class="auto-style12" colspan="2">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="7" style="font-size: 18px; font-weight: bold; background-color: #FFFFFF;">
                    <asp:Button ID="ButtonPur" runat="server" OnClick="ButtonPur_Click" Text="Confirm and Purchase" BackColor="#D1F1FF" BorderStyle="None" />
                </td>
            </tr>
        </table>
        <table class="auto-style14">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style28">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
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
</body>
    <footer class="border-top footer text-muted">
        <div class="container">
            <div>
                
            </div>
            &copy; 2022 - Canadian Atlantic Airlines, All Rights Reserved - <a asp-area="" asp-controller="Home" asp-action="Privacy">Privacy</a>
        </div>
    </footer>
    </form>

</html>