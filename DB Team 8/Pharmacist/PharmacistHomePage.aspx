<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PharmacistHomePage.aspx.cs" Inherits="Lilo.WebForm1" %>

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
            <h1>Home Page: Profile</h1>
        </div>
        <div class="SignOut">
                        <a href="/HomePage/HomePage.aspx" class="active">Sign-Out</a>
        </div>
    </div>
    <div class="sidenav">
        <div class="profile">
            <img src="https://as1.ftcdn.net/v2/jpg/05/53/79/60/1000_F_553796090_XHrE6R9jwmBJUMo9HKl41hyHJ5gqt9oz.jpg" alt="" width="100" height="100">
                  <div class="name">
                <asp:Label ID="Name" title="This is your registered name" runat="server" ></asp:Label>
            </div>
            <div class="job">
                <asp:Label ID="ID" runat="server" title="This is your registered Pharmacist ID" Text="ID here"></asp:Label>
            </div>
        </div>
        <div class="sidenav-url">
            <div class="url">
                <a href="ViewPhar_Profile.aspx" Title="View my profile which contains all my information." class="active">View Profile </a>
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
             <a href="List_all_Phar.aspx" title="List all Pharmacists, where they work, and the prescriptions they checked" class="">List All Pharmacists</a>
             <hr align="center">
             </div>
             </div>


   

    <div class="main">
        <h2>Willkommen Pharmacist!</h2>
        <div class="card">
            <div class="card-body">
                <table>
                    <tbody>
                        <tr>
                            <td>ID</td>
                            <td>:</td>
                            <td>
                            <asp:Label ID="trID" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td>:</td>
                            <td>
                            <asp:Label ID="trName" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td>
                             <asp:Label ID="trEmail" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Starting_day</td>
                            <td>:</td>
                            <td>
                                <asp:Label ID="trStarting_day" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Experience</td>
                            <td>:</td>
                            <td>
                                 <asp:Label ID="trExperience" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Pharmacy_ID</td>
                            <td>:</td>
                            <td>
                                 <asp:Label ID="trPharmacy_ID" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                      
                        <%-- <tr>
                             <td>Password</td>
                             <td>:</td>
                             <td>
                                  <asp:Label ID="trPassword" runat="server" TextMode="Password" Text="Label"></asp:Label>
                             </td>
                         </tr>--%> <%--/*2olt ashelha mdam e7na koleina shylnha (for extra security) i guess*/--%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
      

    </form>

    <script>
       
    </script>
</body>
</html>