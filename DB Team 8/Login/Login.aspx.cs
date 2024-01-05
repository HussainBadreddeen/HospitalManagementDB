using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Printing;

namespace DB_Team_8.Login
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        API api=new API();
        
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void LogIn(object sender, EventArgs e)
        {
            string username = Username.Text;
            string password = Password.Text;
            bool bLogged = api.UserLogin(username, password);
            if (SharedObjects.getUserType() == "P")
            {
                Response.Redirect("/PatientHome/Patient.aspx");
            }
            else if(SharedObjects.getUserType() == "PS")
            {
                Response.Redirect("/Pharmacist/PharmacistHomePage.aspx");
            }
            else if (SharedObjects.getUserType() == "N")
            {
                Response.Redirect("/Patient list/Patient_list _page.aspx");
            }
            else if(SharedObjects.getUserType() == "D")
            {
                Response.Redirect("/Profile/Profile.aspx");
            }
            else
            {
                Label3.Text = "Incorrect User ID or Password";
            }



        }
    }
}