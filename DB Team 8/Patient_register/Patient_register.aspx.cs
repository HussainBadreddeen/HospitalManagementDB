using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.Patient_Register
{
    public partial class Patient_register : System.Web.UI.Page

    {
        API api = new API();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Done(object sender, EventArgs e)
        {
            string pid = PID.Text;
            string name = Name.Text;
            string address = Address.Text;
            string blood_type = Blood_type.Text;
            bool is_insured = false;
            if (yes.Checked)
            {
                is_insured = yes.Checked;
            }
            else if (no.Checked)
            {
                is_insured = no.Checked;
            }
            string Ems_id = ems_ID.Text;
            string insurance = Insurance_ID.Text;
            string email = Email.Text;
            string password = this.password.Text;

            bool rowsAffected = CreatePatientProfile(pid, name, address, blood_type, is_insured, Ems_id, insurance, email, password);

            if (rowsAffected)
            {
                message.Text = "Patient profile created successfully.";
            }
            else
            {
                message.Text = "Error creating Patient profile.";
            }
            //CreateNurseProfile();
        }




        public bool CreatePatientProfile(String pid, string name, string address, string blood_type, bool is_insured, String ems_id, string insurance, string email, string password)
        {
            bool result = false;

            using (SqlConnection connection = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123"))

            {
                connection.Open();
                string query = "PatientRegister";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    //bool isInsuredValue = bool.Parse(Is_insured.Text);
                    command.Parameters.AddWithValue("@PID", pid);
                    command.Parameters.AddWithValue("@Address", address);
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Blood_type", blood_type);
                    command.Parameters.AddWithValue("@Is_insured", is_insured);
                    command.Parameters.AddWithValue("@ems_ID", ems_id);
                    command.Parameters.AddWithValue("@Insurance_ID", insurance);
                    command.Parameters.AddWithValue("@password", password);

                    int rowsaffected = command.ExecuteNonQuery();

                    if (rowsaffected > 0)
                    {
                        result = true;
                    }
                }
            }
            if (result)
            {
                api.UserLogin(PID.Text, this.password.Text);
                Response.Redirect("/PatientHome/Patient.aspx");
            }

            return result;
        }
    }
}