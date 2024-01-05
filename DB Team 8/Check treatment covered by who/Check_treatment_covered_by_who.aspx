<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Check_treatment_covered_by_who.aspx.cs" Inherits="DB_Team_8.Check_treatment_covered_by_who.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="CheckTreatmentCoveredByWho.css"> <!-- Updated CSS link -->
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
                <a href="/Patient list/Patient_list _page.aspx" >Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/View doctors page/View_doctors.aspx" >View Doctors</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/View patient profile page/View_patient_profile.aspx" >View Patient Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="/List_EMS_Manage/List_EMS_Manage.aspx">List all EMS manage</a>
                <hr align="center">
            </div>
              <div class="url">
                    <a href="/Check treatment covered by who/Check_treatment_covered_by_who.aspx" class="active">Check Treatment Coverage</a>
                    <hr align="center">
                </div>
        </div>
        </div>

        <div class="main">
            <h2>Treatment Coverage</h2>
            <div class="card">
                <div class="card-body">
                    <table>
                        <tbody>
                            <tr>
                                <td>Cost</td>
                                <td>:</td>
                                <td>
                                    <asp:TextBox ID="Cost" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>PID</td>
                                <td>:</td>
                                <td>
                                    <asp:TextBox ID="PID" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Covered by:</td>
                                <td>:</td>
                                <td>
                                    <asp:Label ID="Label3Check" runat="server" Text=""></asp:Label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <asp:Button ID="ButtonCheckTreatment" runat="server" Text="Check" OnClick="Click_Check" />
                    <asp:Label ID="Error_message" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

