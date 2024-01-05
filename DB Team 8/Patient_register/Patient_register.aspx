<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient_register.aspx.cs" Inherits="DB_Team_8.Patient_Register.Patient_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link rel="stylesheet" type="text/css" href="PatientRegister.css">

</head>

<body>
    <form id="form1" runat="server">
    <div class="container">
    <div class="form-container" id="login-form">
    <h1>Patient Registery</h1>
        <div>
    <asp:Label ID="labelpatient_ID" runat="server" title= "Starts with P" Text="PID:"></asp:Label><asp:TextBox ID="PID" title= "Starts with P" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="labelAddress" runat="server" Text="Address:"></asp:Label><asp:TextBox ID="Address" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="labelName" runat="server" Text="Name:"></asp:Label><asp:TextBox ID="Name" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="labelemail" runat="server" Text="Email:"></asp:Label><asp:TextBox ID="Email" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="labelBloodtype" runat="server" Text="Blood_type:"></asp:Label><asp:TextBox ID="Blood_type" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="labelIsinsured" runat="server" Text="Is_insured:"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="YES"></asp:Label>
    <asp:RadioButton ID="yes" runat="server" GroupName="Radio" />
    <asp:Label ID="Label2" runat="server" Text="NO">
    </asp:Label><asp:RadioButton ID="no" runat="server" GroupName="Radio"/>
    <br />
    <asp:Label ID="labelemsID" runat="server" title= "Starts with E" Text="EMS_ID:"></asp:Label><asp:TextBox ID="ems_ID" title= "Starts with E" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="labelinsurance_id" runat="server" title= "Starts with I" Text="Insurance_ID:"></asp:Label><asp:TextBox ID="Insurance_ID" title= "Starts with I" runat="server"></asp:TextBox>
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
