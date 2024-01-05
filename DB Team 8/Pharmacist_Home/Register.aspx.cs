using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.Pharmacist_Home
{
    public partial class Register : System.Web.UI.Page
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

            bool rowsAffected = CreatePharProfile();

            if (rowsAffected)
            {
                message.Text = "Pharmacist profile created successfully.";
            }
            else
            {
                message.Text = "Error creating Pharmacist profile.";
            }

        }
        public bool CreatePharProfile()
        {
            bool result = false;

            using (SqlConnection connection = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123"))
            {
                connection.Open();
                string query = "PharmacistRegister";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;

                    command.Parameters.AddWithValue("@Pharmacist_ID", Pharmacist_ID.Text);
                    command.Parameters.AddWithValue("@Name", Name.Text);
                    command.Parameters.AddWithValue("@Starting_day", DateTime.Parse(Starting_day.Text)); /*Parse date needed for date??*/
                    //command.Parameters.AddWithValue("@Experience", int.Parse(Experience.Text)); /*/* not needed 3shan heya derived*/*/
                    command.Parameters.AddWithValue("@Pharmacy_ID", /*int.Parse(*/Pharmacy_ID.Text/*)*/);
                    command.Parameters.AddWithValue("@email", email.Text);
                    command.Parameters.AddWithValue("@password", password.Text);

                    int rowsaffected = command.ExecuteNonQuery();

                    if (rowsaffected > 0)
                    {
                        result = true;
                    }
                }
            }
            if (result)
            {
                api.UserLogin(Pharmacist_ID.Text, password.Text);
                Response.Redirect("/Pharmacist/PharmacistHomePage.aspx");
            }
            return result;
        }
    }

}