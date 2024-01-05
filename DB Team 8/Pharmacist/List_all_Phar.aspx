<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List_all_Phar.aspx.cs" Inherits="Lilo.List_all_Phar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="phar_styling.css" />

</head>
<body>
    <form id="form1" runat="server">
             <div class="navbar-top">
    <div class="title">
        <h1>All Pharmacists</h1>
    </div>
    <div class="SignOut">
                    <a href="/HomePage/HomePage.aspx" class="active">Sign-Out</a>
    </div>
</div>
<div class="sidenav">
    <div class="profile">
        <img src="https://as1.ftcdn.net/v2/jpg/05/53/79/60/1000_F_553796090_XHrE6R9jwmBJUMo9HKl41hyHJ5gqt9oz.jpg" alt="" width="100" height="100">
              <div class="name">
            <asp:Label ID="Name" runat="server" title="This is your registered Pharmacist name" Text="Name here"></asp:Label>
        </div>
        <div class="job">
            <asp:Label ID="ID" runat="server" title="This is your registered Pharmacist ID" Text="ID here"></asp:Label>
        </div>
    </div>
    <div class="sidenav-url">
        <div class="url">
            <a href="ViewPhar_Profile.aspx" Title="View my profile which contains all my information." class="">View Profile </a>
            <hr align="center">
        </div>
        <div class="url">
            <a href="Update_Information.aspx" title="Edit the value of any of my profile info (Choose any attribute)" class="">Update Info</a>
            <hr align="center">
        </div>
  
        
        <div class="url">
        <a href="Check_Pres.aspx" title="Check a specifc Prescription" class="">Check Prescription</a>
        <hr align="center">
        </div>

         </div>
         <div class="url">
         <a href="List_all_Pres.aspx" title="List the Prescriptions written by each doctor to each patient" class="">List All Prescriptions</a>
         <hr align="center">
         </div>

   
         <div class="url">
         <a href="List_all_Phar.aspx" title="List all Pharmacists, where they work, and the prescriptions they checked" class="active">List All Pharmacists</a>
         <hr align="center">
         </div>
         </div>
<div class="main">
   <div class="card">
    <div class="card-body">
        <div>
        <asp:GridView ID="gridViewPharmacists" runat="server" AutoGenerateColumns="True"></asp:GridView>
            </div>
        <div>
            <asp:Label ID="Error_Message" runat="server" ForeColor="Red"></asp:Label>
            </div>
        <div>
            <asp:Button runat="server" Text="Back" OnClick="BackButtonClick" />
            </div>
    </div>
</div>
    </div>
        

              
    </form>
</body>
</html>