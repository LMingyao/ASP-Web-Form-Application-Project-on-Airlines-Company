<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ProjectCAA_Airlines.GUI.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
      <link href="assets/site.css" rel="stylesheet"/>
     <link href= "assets/_Layout.cshtml.css" rel="stylesheet"/>
    <link href="assets/LoginStyle.css" rel="stylesheet"/>
   <%-- <link href="assets/awesome-bootstrap-checkbox.min.css"  rel="stylesheet" />--%>
    <link href="assets/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/font-awesome.min.css" rel="stylesheet"/>
    <link href="assets/style.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
         <span class="header-ribbon"/>
        <p>

        </p>
  <div class="container-fluid">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 col-centered">
            <div class="login-panel">
                <h4 class="login-panel-title">Login, Please
                    
                   
                    
                </h4>
                <p class="login-panel-tagline">Login for your personal page, manage your personal trip, payments, etc...</p>
                <div class="login-panel-section">
                    <div class="form-group">
                        <div class="input-group margin-bottom-sm">

                            <span class="input-group-addon"> <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label><i class="fa fa-envelope-o fa-fw" aria-hidden="true"></i></span>
                       

                            <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">  <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><i class="fa fa-key fa-fw" aria-hidden="true"></i></span>
                           <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="checkbox checkbox-circle checkbox-success checkbox-small">

                        <a href="#" class="pull-right">Forget your password?</a>
                    </div>
                </div>
                <div class="login-panel-section">
                          <asp:Button ID="ButtonLogin" runat="server" Text="Login" OnClick="ButtonLogin_Click" style="height: 22px" />
                   
                </div>
            </div>
        </div>
      </div>
    </div>

    </form>

</body>
</html>
