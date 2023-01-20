<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutForm.aspx.cs" Inherits="ProjectCAA_Airlines.GUI.AboutForm" %>

<!DOCTYPE html>

<hhtml xmlns="http://www.w3.org/1999/xhtml">
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
                        <asp:Button ID="ButtonSignUp" runat="server" Text="Sign Up" OnClick="ButtonSignUp_Click" BackColor="White" BorderStyle="None" ForeColor="#00ACFD" />
                        <asp:Label ID="LabelUser" runat="server"></asp:Label>
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
        <p1>
             About Canadian Atlantic Airlines <br><br>
        </p1>
        <p2>
         
    Canadian Atlantic Airlines is Canada's number one leisure airline. It flies to some 60 international destinations in
more than 25 countries in the Americas and Europe, offers domestic and connecting flights within Canada, and
carries some 5 million passengers everyear. Canadian Atlantic Airlines was awarded Travelife certification in
2018 inrecognition of its commitment to sustainable development. Based in Montreal. it has 5.000 employees
            <br><br>
             <p1>
         
Recent distinctions and awards<br><br>
        </p1>
Recent distinctions and awards
Named World's Best Leisure Airline at the Skytrax World Airline Awards
Voted Best Tour Operator and Favourite Overall Supplier at the Agents' Choice Awards presented by Baxter Travel Media
Voted Best Airline and Best Tour Operator at the Trophées Uni-Vers awards organized by the Association des Agents de Voyages du Québec

        </p2>
</body>

      </form>
      <footer class="border-top footer text-muted">
        <div class="container">
            <div>
                
            </div>
            &copy; 2022 - Canadian Atlantic Airlines, All Rights Reserved - <a asp-area="" asp-controller="Home" asp-action="Privacy">Privacy</a>
        </div>
    </footer>
    
</html>
