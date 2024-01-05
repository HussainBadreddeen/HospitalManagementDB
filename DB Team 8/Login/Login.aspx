<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DB_Team_8.Login.WebForm1" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Login2.css">
</head>
<body>
<form id="form" runat="server">
<div class="container">
    <div class="form-container" id="login-form">
      <h1>Login</h1>
        <div class="Error">
        <asp:Label ID="Label3" runat="server" Text="" CssClass="Label3"></asp:Label>
            </div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
        <br />
        <asp:TextBox ID="Username" title="Start with P for Patient, PS for Pharmacist, D for Doctor, or N for Nurse; followed by your ID number" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <br />
        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Log In"  OnClick="LogIn"/>
      <p>Don't have an account? <a href="/Registery/Registery.aspx" id="signup-link">Sign up</a></p>
    </div>
  </div>
</form>
</body>
</html>
    