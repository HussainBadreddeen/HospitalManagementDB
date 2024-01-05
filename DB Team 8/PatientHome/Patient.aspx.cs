using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.PatientHome
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Patient_User.Name;
            ID.Text= SharedObjects.Patient_User.ID;  
            trName.Text = SharedObjects.Patient_User.Name;
            trAddress.Text = SharedObjects.Patient_User.Address;
            trEmail.Text = SharedObjects.Patient_User.Email;
            trID.Text=SharedObjects.Patient_User.ID;
            trBloodType.Text= SharedObjects.Patient_User.BloodType;
            trInsured.Text = SharedObjects.Patient_User.Is_Insured.ToString();
            trEms.Text = SharedObjects.Patient_User.ems_ID;
            trInsurance.Text = SharedObjects.Patient_User.Insurance_ID;


        }
    }
}