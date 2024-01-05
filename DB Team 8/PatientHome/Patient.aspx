<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Patient.aspx.cs" Inherits="DB_Team_8.PatientHome.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="PatientHome.css">

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
                <a href="#Patient" class="active">Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/Hospitals/Hospitals.aspx">Hospitals</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/Doctors/Doctors.aspx">Doctors</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/Appointment/Appointment.aspx" >Appointment</a>
                <hr align="center">
            </div>
              <div class="url">
                <a href="/UpdatePatient/UpdatePatient.aspx" >Update Profile</a>
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
                            <td>Address</td>
                            <td>:</td>
                            <td>
                                <asp:Label ID="trAddress" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Blood Type</td>
                            <td>:</td>
                            <td>
                                 <asp:Label ID="trBloodType" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Insured</td>
                            <td>:</td>
                            <td>
                                 <asp:Label ID="trInsured" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Insurance ID (If exists)</td>
                            <td>:</td>
                            <td>
                                 <asp:Label ID="trInsurance" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                             <td>Ems ID</td>
                             <td>:</td>
                             <td>
                                  <asp:Label ID="trEms" runat="server" Text="Label"></asp:Label>
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
