using DB_Team_8;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Lilo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        API api = new API();


        protected void Page_Load(object sender, EventArgs e)
        {

           
            //if (SharedObjects.Pharmacist_User.ID != null)
                Name.Text = SharedObjects.Pharmacist_User.Name;
            ID.Text = SharedObjects.Pharmacist_User.ID;

            trID.Text = SharedObjects.Pharmacist_User.ID;
            trName.Text = SharedObjects.Pharmacist_User.Name;
            trStarting_day.Text = SharedObjects.Pharmacist_User.Starting_day;
            trExperience.Text = SharedObjects.Pharmacist_User.Experience;
            trEmail.Text = SharedObjects.Pharmacist_User.Email;
            trPharmacy_ID.Text = SharedObjects.Pharmacist_User.Pharmacy_ID;
            //trPassword.Text = SharedObjects.Pharmacist_User.Password; /*2olt ashelha mdam e7na koleina shylnha (for extra security) i guess*/

        }
        protected void ViewProfile(object sender, EventArgs e)
        {
            // Redirect to the 'View Profile' page
            Response.Redirect("ViewPhar_Profile.aspx");
        }

        protected void UpdateInformation(object sender, EventArgs e)
        {
            // Redirect to the 'Update Information' page
            Response.Redirect("Update_Information.aspx");
        }

        protected void CheckPrescription(object sender, EventArgs e)
        {
            // Redirect to the 'Check a Prescription' page
            Response.Redirect("Check_Pres.aspx");
        }

        protected void ListAllPrescriptions(object sender, EventArgs e)
        {
            // Redirect to the 'List All Prescriptions' page
            Response.Redirect("List_all_Pres.aspx");
        }

        protected void ListAllPharmacists(object sender, EventArgs e)
        {
            // Redirect to the 'List All Pharmacists' page
            Response.Redirect("List_all_Phar.aspx");
        }

    }
}