<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospitals.aspx.cs" Inherits="DB_Team_8.Hospitals.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" type="text/css" href="Hospital.css">

</head>
<body>
    <form id="form1" runat="server">
       <div class="navbar-top">
        <div class="title">
            <h1>Hospitals</h1>
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
                <a href="/PatientHome/Patient.aspx" >Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/Hospitals/Hospitals.aspx" class="active">Hospitals</a>
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
        <h2>Hospitals</h2>
        <div class="card">
            <div class="card-body">
               <asp:GridView ID="gridViewPrescriptions" runat="server" AutoGenerateColumns="true">
                </asp:GridView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
