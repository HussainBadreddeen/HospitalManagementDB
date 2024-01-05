using DB_Team_8;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        API api = new API();
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Nurse.FirstName + " " + SharedObjects.Nurse.LastName;
            ID.Text = SharedObjects.Nurse.NurseId;
        }
        protected void Click_View(object sender, EventArgs e)
        {

            try
            {
                gridViewAdminViewPatientProfile.DataSource = null;
                gridViewAdminViewPatientProfile.DataBind();
                Error_message.Text = "";
            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");
                using (mysql)
                {
                    mysql.Open();

                    //string query = "Select * from dbo.AdminViewPatientProfile(@PID)";

                    using (SqlCommand command = new SqlCommand("Select * from dbo.AdminViewPatientProfile(@PID)", mysql))
                    {
                        String PatientID = PID.Text;
                        command.Parameters.AddWithValue("@PID", PatientID);

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                gridViewAdminViewPatientProfile.DataSource = reader;
                                gridViewAdminViewPatientProfile.DataBind();
                                Error_message.Text = "";
                            }
                            else
                            {
                                Error_message.Text = "this id isn't available!";
                                Error_message.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }


        }

    }
}
