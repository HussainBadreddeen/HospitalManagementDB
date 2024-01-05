using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lilo.Pharmacist
{
    public partial class ViewPhar_Profile : System.Web.UI.Page
    {
        protected void BackButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("PharmacistHomePage.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}