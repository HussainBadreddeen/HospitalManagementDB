using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.Profile
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Doctor.Name;
            ID.Text = SharedObjects.Doctor.Doctor_ID;
            trName.Text = SharedObjects.Doctor.Name;
            trSpecialization.Text = SharedObjects.Doctor.Specialization;
            trEmail.Text = SharedObjects.Doctor.email;
            trID.Text = SharedObjects.Doctor.Doctor_ID;
            trDays.Text = SharedObjects.Doctor.Working_days;
            trHours.Text = SharedObjects.Doctor.working_hours;
        }
    }
}