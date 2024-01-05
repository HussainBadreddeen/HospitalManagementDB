<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update_Information.aspx.cs" Inherits="Lilo.Pharmacist.Update_Information" %>

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
        <h1>Update Your Information</h1>
    <</div>
      <div class="SignOut">
          <a href="/HomePage/HomePage.aspx" class="active">Sign-Out</a>
      </div>
  </div>
  <div class="sidenav">
      <div class="profile">
          <img src="https://as1.ftcdn.net/v2/jpg/05/53/79/60/1000_F_553796090_XHrE6R9jwmBJUMo9HKl41hyHJ5gqt9oz.jpg" alt="" width="100" height="100">

          <div class="name">
              <asp:Label ID="Name" runat="server" title="This is your registered pharmacist name" Text="Name here"></asp:Label>
          </div>
          <div class="ID">
              <asp:Label ID="ID" runat="server" title="This is your registered Pharmacist ID" Text="ID Here"></asp:Label>
          </div>
      </div>

      <div class="sidenav-url">
    <div class="url">
        <a href="ViewPhar_Profile.aspx" Title="View my profile which contains all my information." class="">View Profile </a>
        <hr align="center">
    </div>
    <div class="url">
        <a href="Update_Information.aspx" title="Edit the value of any of my profile info (Choose any attribute)" class="active">Update Info</a>
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
  </div>

  <div class="main">
      <h2>USER</h2>
      <div class="card">
          <div class="card-body">
              <div>
                  <asp:Button ID="Button1" runat="server" Text="Auto-Fill Records"  />
              </div>
              <table>
                  <tbody>
                      <tr>
                          <td>ID</td>
                          <td>:</td>
                          <td>
                              <asp:TextBox ID="trID" ReadOnly="true" title="Cannot change your ID once registered" BackColor="#4800ff" ForeColor="White" runat="server"></asp:TextBox>
                          </td> <%--3shan myghyrhash fa read only badal ma yghyr w ygeeb error/ validation--%>
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
                          <td>Starting_day</td>
                          <td>:</td>
                          <td>
                              <asp:TextBox ID="trStarting_day" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>Experience</td>
                          <td>:</td>
                          <td>
                               <asp:TextBox ID="trExperience" ReadOnly="true" title="Cannot change experience as it it derived from Starting_day " runat="server"></asp:TextBox>
                             <%-- should not be modified 3shan dee derived aslun mn Starting_day--%>
                          </td>
                      </tr>
                  
                      <tr>
                          <td>Pharmacy_ID</td>
                          <td>:</td>
                          <td>
                               <asp:TextBox ID="trPharmacy_ID" runat="server"></asp:TextBox>
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