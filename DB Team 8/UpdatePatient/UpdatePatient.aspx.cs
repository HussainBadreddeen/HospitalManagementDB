using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.UpdatePatient
{
    public partial class UpdatePatient : System.Web.UI.Page
    {
        API api=new API();

        
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Patient_User.Name;
            ID.Text = SharedObjects.Patient_User.ID;
            if(!IsPostBack)
            {
                trID.Text = SharedObjects.Patient_User.ID;
                trName.Text = SharedObjects.Patient_User.Name;
                trEmail.Text = SharedObjects.Patient_User.Email;
                trAddress.Text = SharedObjects.Patient_User.Address;
                trBloodType.Text = SharedObjects.Patient_User.BloodType;
                trInsured.Text = SharedObjects.Patient_User.Is_Insured.ToString();
                trInsurance.Text = SharedObjects.Patient_User.Insurance_ID;
                trEms.Text = SharedObjects.Patient_User.ems_ID;
                trPassword.Text = SharedObjects.Patient_User.password;
            }
        }
        protected void SubmitMethod(object sender, EventArgs e)
        {
            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");
            mysql.Open();
            SqlCommand cmd = new SqlCommand("AdminUpdatePatientInfo", mysql);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PatientID", SharedObjects.Patient_User.ID);
            cmd.Parameters.AddWithValue("@name",trName.Text);
            cmd.Parameters.AddWithValue("@address",trAddress.Text);
            cmd.Parameters.AddWithValue("@email",trEmail.Text);
            cmd.Parameters.AddWithValue("@Blood_type", trBloodType.Text);
            cmd.Parameters.AddWithValue("@Is_insured",trInsured.Text);
            cmd.Parameters.AddWithValue("@ems_id", trEms.Text);
            cmd.Parameters.AddWithValue("@Insurance_id",trInsurance.Text);
            cmd.Parameters.AddWithValue("@Password", trPassword.Text);
            SqlParameter outputParameter = new SqlParameter("@Out", SqlDbType.Bit);
            outputParameter.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(outputParameter);
            cmd.ExecuteNonQuery();
            bool Success = (bool)outputParameter.Value;
            if(Success)
            {
                api.UserUpdate();
                Label2.Text = "Successfully updated your profile";
            }
            else
            {
                Label1.Text = "Could not update your information, make sure everything is filled and try again";
            }
        }
    }
}