<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="DB_Team_8.Profile.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="/Profile/viemy.css">

</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar-top">
        <div class="title">
            <h1>Profile</h1>
        </div>
        <div class="SignOut">
            <a href="/HomePage/HomePage.aspx" class="active">Sign-Out</a>

        </div>
    </div>
    <div class="sidenav">
        <div class="profile">
            <img src="https://as1.ftcdn.net/v2/jpg/05/53/79/60/1000_F_553796090_XHrE6R9jwmBJUMo9HKl41hyHJ5gqt9oz.jpg" alt="" width="100" height="100">

            <div class="name">
                <asp:Label ID="Name" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="ID">
                <asp:Label ID="ID" runat="server" Text="Label"></asp:Label>
            </div>
        </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="/DoctorProfile/Profile.aspx" class="active">Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/RequestLabTest/RequestLabTest.aspx">Request LabTest</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/AddMyNumber/AddMyNumber.aspx" >Add No.</a>
                <hr align="center">
            </div>
              <div class="url">
                <a href="/ViewPatientMedicalHistory/ViewPatientMedicalHistory.aspx" >View Patient MH</a>
                <hr align="center">
            </div>
              <div class="url">
                <a href="/WriteAPrescription/WriteAPrescription.aspx" >Write Prescription</a>
                <hr align="center">
            </div>
        </div>
    </div>

    <div class="main">
        <h2>USER</h2>
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
                            <td>Specialization</td>
                            <td>:</td>
                            <td>
                                <asp:Label ID="trSpecialization" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Working Days</td>
                            <td>:</td>
                            <td>
                                 <asp:Label ID="trDays" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Working Hours</td>
                            <td>:</td>
                            <td>
                                 <asp:Label ID="trHours" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
