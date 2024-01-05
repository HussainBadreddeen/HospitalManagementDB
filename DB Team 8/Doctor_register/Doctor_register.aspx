<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctor_register.aspx.cs" Inherits="DB_Team_8.Doctor_register.Doctor_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Doctor_register.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <div class="form-container" id="login-form">
        <h1>Doctor Registery</h1>
        <div>
 <asp:Label ID="label1" runat="server" Text="Doctor ID:"></asp:Label>
<br />
 <asp:TextBox ID="Doctor_ID" title= "Starts with D" runat="server"></asp:TextBox>
<br />
<asp:Label ID="labelFirst_name" runat="server" Text="Name:"></asp:Label><asp:TextBox ID="Name" runat="server"></asp:TextBox>
<br />
<asp:Label ID="labelMiddle_name" runat="server" Text="Specialization:"></asp:Label><asp:TextBox ID="Specialization" runat="server"></asp:TextBox>
<br />
<asp:Label ID="labelLast_name" runat="server" Text="Working_days:"></asp:Label><asp:TextBox ID="Working_days" runat="server"></asp:TextBox>
<br />
<asp:Label ID="labelShift" runat="server" Text="Working_hours:"></asp:Label><asp:TextBox ID="Working_hours" runat="server"></asp:TextBox>
<br />
<asp:Label ID="labelemail" runat="server" Text="Email"></asp:Label><asp:TextBox ID="email" runat="server"></asp:TextBox>
<br />
<asp:Label ID="labelpassword" runat="server" Text="Password"></asp:Label><asp:TextBox ID="password" runat="server"></asp:TextBox>
<br />
<asp:Button ID="Button1" runat="server" backcolor="lightgray" Text="Done" OnClick="Done"/>
<br />
<asp:Label ID="message" runat="server" Text=""></asp:Label>
       
        </div>
        </div>
            </div>
    </form>
</body>
</html>
