using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.nurse_homepage
{
    public partial class nurse_homepage : System.Web.UI.Page
    {
        API api = new API();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Done(object sender, EventArgs e)
        {
            Debug.WriteLine("Done method called.");
            string nurseId = Nurse_ID.Text;
            string firstName = First_name.Text;
            string middleName = Middle_name.Text;
            string lastName = Last_name.Text;
            string shift = Shift.Text;
            string pid = PID.Text;
            string email = this.email.Text;
            string password = this.password.Text;

            bool rowsAffected = CreateNurseProfile(nurseId, firstName, middleName, lastName, shift, pid, email, password);

            if (rowsAffected)
            {
                message.Text = "Nurse profile created successfully.";
            }
            else
            {
                message.Text = "Error creating nurse profile.";
            }
            //CreateNurseProfile();
        }

        public bool CreateNurseProfile(string nurseId, string firstName, string middleName, string lastName, string shift, string pid, string email, string password)
        {
            bool result = false;


            using (SqlConnection connection = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123"))
            {
                connection.Open();
                //String query = "INSERT INTO NurseRegistry(Nurse_ID, First_name, Middle_name, Last_name, Shift, PID, email, password) VALUES(@NurseId, @FirstName, @MiddleName, @LastName, @Shift, @PID, @Email, @Password)";
                string query = "NurseRegister";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@Nurse_ID", nurseId);
                    command.Parameters.AddWithValue("@First_name", firstName);
                    command.Parameters.AddWithValue("@Middle_name", middleName);
                    command.Parameters.AddWithValue("@Last_name", lastName);
                    command.Parameters.AddWithValue("@Shift", shift);
                    command.Parameters.AddWithValue("@PID", pid);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);

                    int rowsaffected = command.ExecuteNonQuery();

                    if (rowsaffected > 0)
                    {
                        result = true;
                        
                    }
                }
            }
            api.UserLogin(nurseId, password);
            Response.Redirect("/Patient list/Patient_list _page.aspx");
            return result;
        }
    }


}
    
