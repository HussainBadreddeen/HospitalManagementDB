<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registery.aspx.cs" Inherits="DB_Team_8.Registery.Registery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nurse Page</title>
        <link rel="stylesheet" type="text/css" href="Registery.css">

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="form-container" id="login-form">
                <h1>Register</h1>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Select User Type"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        </div>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Submit" />
            </div>
            </div>
    </form>
</body>
</html>
