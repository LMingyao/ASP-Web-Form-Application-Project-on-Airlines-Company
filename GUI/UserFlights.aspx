<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserFlights.aspx.cs" Inherits="ProjectCAA_Airlines.GUI.UserFlights" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title></title>
      <link href="assets/site.css" rel="stylesheet"/>
     <link href= "assets/_Layout.cshtml.css" rel="stylesheet"/>

    </head>
<body>
    <form id="form2" runat="server">
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
                        <asp:Button ID="ButtonSignUp" runat="server" Text="Sign up" OnClick="ButtonSignUp_Click" BackColor="White" BorderStyle="None" ForeColor="#00ACFD" />
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
</body>
    <style type="text/css">

        .auto-style14 {
            width: 71%;
        }
        .auto-style21 {
            height: 40px;
        }
        .auto-style19 {
            width: 297px;
            height: 40px;
        }
        .auto-style20 {
            width: 342px;
            height: 40px;
        }
        .auto-style17 {
            width: 212px;
            height: 40px;
        }
        .auto-style18 {
            width: 211px;
            height: 40px;
        }
        .auto-style12 {
            width: 212px;
        }
        .auto-style13 {
            width: 211px;
        }
        .auto-style15 {
            width: 297px;
        }
        .auto-style16 {
            width: 342px;
        }
        </style>
</head>
<body> 
        <div>
        <div>
            Your Flights&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="LabelDisNo" runat="server"></asp:Label>
            <br />
        </div>


        <table class="auto-style14">
            <tr>
                <td class="auto-style17">
                    <asp:GridView ID="gvListOfComponent" runat="server" OnSelectedIndexChanged="gvListOfComponent_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
                <td class="auto-style18">
                    <asp:ListView ID="ListView1" runat="server">
                    </asp:ListView>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style20">
                    &nbsp;</td>
                <td class="auto-style21">
                    &nbsp;</td>
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
                <td class="auto-style21">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style16"></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        </div>
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
