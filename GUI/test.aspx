<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="ProjectCAA_Airlines.GUI.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="assets/site.css" rel="stylesheet"/>
     <link href= "assets/_Layout.cshtml.css" rel="stylesheet"/>

    <style type="text/css">
        .auto-style1 {
            width: 719px;
        }
        .auto-style2 {
            width: 1022px;
        }
        .auto-style4 {
            width: 626px;
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




    <div class="banner-container">
    <div class="banner">
        <img src="../Stock/JR-OG.png" />
    </div>
</div>
<div class="ticket-container">
    <div class="header">
        <h2>Flight</h2>
    </div>
    <div class="ticketradiusbutton">
        <div class="radiussection">
             <asp:Button ID="ButtonRP" runat="server" Text="Round Trip" OnClick="ButtonRP_Click" BackColor="#D1F1FF" BorderStyle="None" />
        </div>
        <div class="radiussection"> 
             <asp:Button ID="ButtonOW" runat="server" Text="One-Way" OnClick="ButtonOW_Click" BackColor="#D1F1FF" BorderStyle="None" />
        </div>
      
    </div>
    <div class="ticketinfo">
        <table class="auto-style1">
            <tr>
                <th>From</th>
                <th></th>
                <th>To</th>
                <th class="auto-style4">Travel Date</th>
                <th class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Return Date"></asp:Label>
                </th>
                <th>Passenger(s)</th>
            </tr>
            <tr>
                <td style="height:100px">
                    <asp:DropDownList ID="DropDownListDep" runat="server">
                            <asp:ListItem>Please Select Your Departure City</asp:ListItem>
                            <asp:ListItem>Montreal</asp:ListItem>
                            <asp:ListItem>Toronto</asp:ListItem>
                            <asp:ListItem>Vancouver</asp:ListItem>
                            <asp:ListItem>Paris</asp:ListItem>
                        </asp:DropDownList>
                </td>
                <td>
                    <img src="../Stock/arrow-right-arrow-left-solid.jpg" />
                </td>
                <td>
                      <asp:DropDownList ID="DropDownListArr" runat="server">
                            <asp:ListItem>Please Select Your Arrival City</asp:ListItem>
                            <asp:ListItem>Montreal</asp:ListItem>
                            <asp:ListItem>Toronto</asp:ListItem>
                            <asp:ListItem>Vancouver</asp:ListItem>
                            <asp:ListItem>Paris</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxTD" runat="server" Width="188px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButtonTD" runat="server" Height="16px" ImageUrl="~/Stock/cal.jpg" OnClick="ImageButtonTD_Click" Width="22px" />
                                    
                
                       <asp:Calendar ID="CalendarDep" runat="server" OnSelectionChanged="CalendarDep_SelectionChanged"> </asp:Calendar>
                    </td>
                 <td class="auto-style4">
                    <asp:TextBox ID="TextBoxRD" runat="server" Width="174px"></asp:TextBox>
                   
                    <asp:ImageButton ID="ImageButtonRD" runat="server" Height="16px" ImageUrl="~/Stock/cal.jpg" Width="24px" OnClick="ImageButtonRD_Click" />
                                       <asp:Calendar ID="CalendarArr" runat="server" OnSelectionChanged="CalendarArr_SelectionChanged"></asp:Calendar>
                    </td>
                <td>
                  

                        
                  
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="118px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                  

                        
                  
                </td>
            </tr>
        </table>
    </div>
    <div class="ticketbutton">
                         <asp:Button ID="ButtonGS" runat="server" OnClick="ButtonGS_Click" Text="Group-Sale" BackColor="#D1F1FF" BorderColor="White" BorderStyle="None" />

                  <asp:Button ID="ButtonSearch" runat="server" OnClick="ButtonSearch_Click" Text="Search Flights" BackColor="#D1F1FF" BorderColor="White" BorderStyle="None" />
                
    </div>
</div>

    </form>


    <footer class="border-top footer text-muted">
        <div class="container">
            <div>
                
            </div>
            &copy; 2022 - Canadian Atlantic Airlines, All Rights Reserved - <a asp-area="" asp-controller="Home" asp-action="Privacy">Privacy</a>
        </div>
    </footer>

</html>
