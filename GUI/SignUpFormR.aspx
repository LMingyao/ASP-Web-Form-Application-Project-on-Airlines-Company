<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpFormR.aspx.cs" Inherits="ProjectCAA_Airlines.GUI.SignUpFormR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="assets/LoginStyle.css" rel="stylesheet"/>
    <link href="assets/awesome-bootstrap-checkbox.min.css"  rel="stylesheet" />
    <link href="assets/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/font-awesome.min.css" rel="stylesheet"/>
    <link href="assets/style.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
        <%--    <form id="form1" runat="server">
        
         <div class="lblLogin">
            <asp:Label ID="LabelLogin" runat="server" Text="Login"></asp:Label>

   </div>

         <div class="Email">
       
             <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label>
             <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
       
             <asp:Button ID="BtnLogin" runat="server" Text="Login" />
       
      </div>

         <div class="Password">
        <asp:Label ID="LabelPassword" runat="server" Text="Password"></asp:Label>
       

             </div>

    </form>--%>

     <span class="header-ribbon"/>
  <div class="container-fluid">
    <div class="row">
        <div class="col-md-4 col-md-offset-4 col-centered">
            <div class="login-panel">
                <h4 class="login-panel-title">Sign Up, please</h4>
                <p class="login-panel-tagline">Join us for lowest price airfares, unlimited offers, wonderful customer service...</p>
                <div class="login-panel-section">

                     <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">  <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label><i class="fa fa-key fa-fw" aria-hidden="true"></i></span>
                           <asp:TextBox ID="TextBoxFN" runat="server"></asp:TextBox>
                        </div>
                    </div>

                     <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">  <asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label><i class="fa fa-key fa-fw" aria-hidden="true"></i></span>
                           <asp:TextBox ID="TextBoxLN" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group margin-bottom-sm">

                            <span class="input-group-addon"> <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label><i class="fa fa-envelope-o fa-fw" aria-hidden="true"></i></span>
                            <%--<input class="form-control" type="text" placeholder="Email address">--%>
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
                        <%--  <input type="checkbox" id="checkbox1">
                        <label for="checkbox1">Keep me logged in</label>--%>
                    

                    </div>
                </div>
                <div class="login-panel-section">
                   
                    <asp:Button ID="ButtonSignUp" runat="server" OnClick="ButtonSignUp_Click" Text="Sign Up" />
                   
                </div>
            </div>
        </div>
      </div>
    </div>

    </form>

</body>
</html>
