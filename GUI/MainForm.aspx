<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="ProjectCAA_Airlines.GUI.MainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 513px;
        }
        .auto-style3 {
            width: 495px;
        }
        .auto-style7 {
            width: 493px;
        }
        .auto-style8 {
            width: 519px;
        }
        .auto-style9 {
            width: 493px;
            height: 40px;
        }
        .auto-style10 {
            width: 519px;
            height: 40px;
        }
        .auto-style11 {
            height: 40px;
        }
        .auto-style14 {
            width: 492px;
        }
        .auto-style16 {
            width: 46%;
            height: 253px;
            margin-bottom: 0px;
            margin-right: 0px;
        }
        .auto-style18 {
            width: 166px;
        }
        .auto-style20 {
            width: 61%;
            margin-right: 0px;
            height: 98px;
        }
        .auto-style21 {
            width: 61%;
        }
        .auto-style22 {
            width: 495px;
            height: 42px;
        }
        .auto-style23 {
            width: 513px;
            height: 42px;
        }
        .auto-style24 {
            height: 42px;
        }
        .auto-style25 {
            width: 456px;
        }
        .auto-style26 {
            width: 132px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <table class="auto-style21">
                <tr>
                    <td class="auto-style14">
                        &nbsp;</td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
             <table class="auto-style21">
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style25">&nbsp;</td>
            <td>
                        <asp:Button ID="ButtonSignin" runat="server" OnClick="ButtonSignin_Click" Text="Sign in" Width="144px" />
                        <asp:Button ID="ButtonSignUp" runat="server" Text="Sign Up" OnClick="ButtonSignUp_Click" />
                        <asp:Label ID="LabelUser" runat="server"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td colspan="2">
                <asp:Button ID="ButtonBook" runat="server" OnClick="ButtonBook_Click" Text="Book" />
                <asp:Button ID="ButtonGroupSale" runat="server" OnClick="ButtonGroupSale_Click" Text="Group-Sale" />
                <asp:Button ID="ButtonMyTickets" runat="server" OnClick="ButtonMyTickets_Click" Text="My Tickets" />
                <asp:Button ID="ButtonAbout" runat="server" OnClick="ButtonAbout_Click" Text="About" />
            </td>
        </tr>
        </table>
        </p>
        <p>
&nbsp;
            <table class="auto-style20">
                <tr>
                    <td class="auto-style9">
            <asp:Label ID="Label2" runat="server" Text="Your Next Flights start here"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        &nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Button ID="ButtonRP" runat="server" OnClick="ButtonRP_Click" Text="Round Trip   " />
                    </td>
                    <td class="auto-style10">
                        <asp:RadioButton ID="rdbtnOW" runat="server" />
                        <asp:Label ID="Label4" runat="server" Text="One-Way "></asp:Label>
                    </td>
                    <td class="auto-style11"></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label6" runat="server" Text="From   "></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label5" runat="server" Text="To"></asp:Label>
                    </td>
                    <td>
                    <asp:Label ID="Label9" runat="server" Text="Passenger(s)"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:DropDownList ID="DropDownListDep" runat="server">
                            <asp:ListItem>Please Select Your Departure City</asp:ListItem>
                            <asp:ListItem>Montreal</asp:ListItem>
                            <asp:ListItem>Toronto</asp:ListItem>
                            <asp:ListItem>Vancouver</asp:ListItem>
                            <asp:ListItem>Paris</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10">
                        <asp:DropDownList ID="DropDownListArr" runat="server">
                            <asp:ListItem>Please Select Your Arrival City</asp:ListItem>
                            <asp:ListItem>Montreal</asp:ListItem>
                            <asp:ListItem>Toronto</asp:ListItem>
                            <asp:ListItem>Vancouver</asp:ListItem>
                            <asp:ListItem>Paris</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="118px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
<asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <table class="auto-style16">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Text="Travel Date"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Return Date"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBoxTD" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButtonTD" runat="server" Height="16px" ImageUrl="~/Stock/cal.jpg" OnClick="ImageButtonTD_Click" Width="22px" />
                </td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBoxRD" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButtonRD" runat="server" Height="16px" ImageUrl="~/Stock/cal.jpg" Width="24px" OnClick="ImageButtonRD_Click" />
                </td>
                <td class="auto-style24"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Calendar ID="CalendarDep" runat="server" OnSelectionChanged="CalendarDep_SelectionChanged"> </asp:Calendar>
                </td>
                <td class="auto-style2">
                    <asp:Calendar ID="CalendarArr" runat="server" OnSelectionChanged="CalendarArr_SelectionChanged"></asp:Calendar>
                </td>
                <td>
            <asp:Button ID="ButtonSearch" runat="server" OnClick="ButtonSearch_Click" Text="Search Flights" />
                </td>
            </tr>
            </table>
    </form>
   
</body>
</html>
