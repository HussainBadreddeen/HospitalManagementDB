using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.Doctor_register
{
    public partial class Doctor_register : System.Web.UI.Page
    {
        API api = new API();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Done(object sender, EventArgs e)
        {
            //Debug.WriteLine("Done method called.");
            //string doctorId = Doctor_ID.Text;
            //string Name = this.Name.Text;
            //string Specialization = this.Specialization.Text;
            //string working_days = Working_days.Text;
            //string working_hours = Working_hours.Text;
            //string email = this.email.Text;
            //string password = this.password.Text;

            bool rowsAffected = CreateDoctorProfile();

            if (rowsAffected)
            {
                message.Text = "Doctor profile created successfully.";
            }
            else
            {
                message.Text = "Error creating doctor profile.";
            }

        }
        public bool CreateDoctorProfile()
        {
            bool result = false;

            using (SqlConnection connection = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123"))
            {
                connection.Open();
                //String query = "INSERT INTO NurseRegistry(Nurse_ID, First_name, Middle_name, Last_name, Shift, PID, email, password) VALUES(@NurseId, @FirstName, @MiddleName, @LastName, @Shift, @PID, @Email, @Password)";
                string query = "DoctorRegister";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@Doctor_ID", Doctor_ID.Text);
                    command.Parameters.AddWithValue("@Name", Name.Text);
                    command.Parameters.AddWithValue("@Specialization", Specialization.Text);
                    command.Parameters.AddWithValue("@Working_days", int.Parse(Working_days.Text));
                    command.Parameters.AddWithValue("@Working_hours", int.Parse(Working_hours.Text));
                    command.Parameters.AddWithValue("@email", email.Text);
                    command.Parameters.AddWithValue("@password", password.Text);

                    int rowsaffected = command.ExecuteNonQuery();

                    if (rowsaffected > 0)
                    {
                        result = true;
                    }
                }
            }
            api.UserLogin(Doctor_ID.Text, password.Text);
            Response.Redirect("/Profile/Profile.aspx");
            return result;
        }
    }

}
    
