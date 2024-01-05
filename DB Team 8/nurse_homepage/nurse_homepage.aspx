<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nurse_homepage.aspx.cs" Inherits="DB_Team_8.nurse_homepage.nurse_homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="nurse_homepage.css">

</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
            <div class="form-container" id="login-form">
            <h1>Nurse Registery</h1>
                <div >

            <asp:Label ID="labelNurse_ID" runat="server" title= "Starts with N" Text="ID:"></asp:Label><asp:TextBox ID="Nurse_ID" title= "Starts with N" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="labelFirst_name" runat="server" Text="FirstName:"></asp:Label><asp:TextBox ID="First_name" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="labelMiddle_name" runat="server" Text="MiddleName:"></asp:Label><asp:TextBox ID="Middle_name" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="labelLast_name" runat="server" Text="LastName:"></asp:Label><asp:TextBox ID="Last_name" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="labelShift" runat="server" Text="Shift:"></asp:Label><asp:TextBox ID="Shift" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="labelPID" runat="server" title= "Starts with P" Text="PID"></asp:Label><asp:TextBox ID="PID" title= "Starts with P" runat="server"></asp:TextBox>
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
