using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.HomePage
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SharedObjects.Doctor = null;
            SharedObjects.Nurse = null;
            SharedObjects.Patient_User = null;
            SharedObjects.Pharmacist_User = null;
            SharedObjects.UserType = null;
        }
        protected void LogIn(object sender, EventArgs e) {
            Response.Redirect("~/Login/Login.aspx");
        }
        protected void Register(object sender, EventArgs e)
        {
            Response.Redirect("/Registery/Registery.aspx");
        }
    }
}