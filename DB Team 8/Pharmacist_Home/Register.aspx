<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="DB_Team_8.Pharmacist_Home.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Pharmacist_Registery.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <div class="form-container" id="login-form">
        <h1>Pharmacist Registery</h1>
        <div>
            <asp:Label ID="labelPharmacist_ID" runat="server" title= "Starts with PS" Text="ID:"></asp:Label> 
            <asp:TextBox ID="Pharmacist_ID" title= "Starts with PS" runat="server"></asp:TextBox>
<br />
<asp:Label ID="label_name" runat="server" Text="Name:"></asp:Label><asp:TextBox ID="Name" runat="server"></asp:TextBox>
<br />
<asp:Label ID="label_Starting_day" runat="server" Text="Starting_day:"></asp:Label><asp:TextBox ID="Starting_day" runat="server"></asp:TextBox>
<br />
<%--<asp:Label ID="label_Experience" runat="server" Text="Experience:"></asp:Label><asp:TextBox ID="Experience" runat="server"></asp:TextBox>--%> <%--No need 3shan auto calc--%>
<br />
<asp:Label ID="label_Pharmacy_ID" runat="server" title= "Starts with PH" Text="Pharmacy_ID:"></asp:Label><asp:TextBox ID="Pharmacy_ID" title= "Starts with PH" runat="server"></asp:TextBox>
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