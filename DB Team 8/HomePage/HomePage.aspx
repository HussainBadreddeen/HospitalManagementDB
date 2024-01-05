<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="DB_Team_8.HomePage.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="FileName.css">
</head>
<header></header>
<body>
    <form id="form1" runat="server">
        <div class="BackGround">

        </div>
       <section id="Home">
           <div class="Title move-up">
               <h3>Welcome</h3>
               <p>Hospital Management System</p>
               <asp:Button class="cta-button" ID="Button1" runat="server" Text="Register" OnClick="Register"/>
               <asp:Button class="cta-button" ID="Button2" runat="server" Text="log in" OnClick="LogIn" />
           </div>
           
       </section>
   </form>
</body>
</html>
