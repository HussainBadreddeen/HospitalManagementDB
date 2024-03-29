﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePatient.aspx.cs" Inherits="DB_Team_8.UpdatePatient.UpdatePatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="UpdatePatient.css">
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
              <a href="/PatientHome/Patient.aspx" >Profile</a>
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
            <a href="/UpdatePatient/UpdatePatient.aspx" class="active" >Update Profile</a>
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
                              <asp:TextBox ID="trID" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Name</td>
                          <td>:</td>
                          <td>
                          <asp:TextBox ID="trName" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Email</td>
                          <td>:</td>
                          <td>
                           <asp:TextBox ID="trEmail" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Address</td>
                          <td>:</td>
                          <td>
                              <asp:TextBox ID="trAddress" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Blood Type</td>
                          <td>:</td>
                          <td>
                               <asp:TextBox ID="trBloodType" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Insured</td>
                          <td>:</td>
                          <td>
                               <asp:TextBox ID="trInsured" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Insurance ID (If exists)</td>
                          <td>:</td>
                          <td>
                               <asp:TextBox ID="trInsurance" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                       <tr>
                           <td>Ems ID</td>
                           <td>:</td>
                           <td>
                                <asp:TextBox ID="trEms" runat="server"></asp:TextBox>
                           </td>
                       </tr>
                                             <tr>
                           <td>Password</td>
                           <td>:</td>
                           <td>
                                <asp:TextBox ID="trPassword" runat="server"></asp:TextBox>
                           </td>
                       </tr>
                  </tbody>
              </table>
              <div>
                  <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="SubmitMethod"/>
              </div>
              <div class="error">
                  <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
              </div>
              <div class="Success">
                   <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
              </div>
          </div>
      </div>
  </div>
    </form>
</body>
</html>
