using DB_Team_8;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.Patient_list_page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        API api = new API();
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Nurse.FirstName + " " + SharedObjects.Nurse.LastName;
            ID.Text = SharedObjects.Nurse.NurseId;
            try
            {
                GridViewPatientList.DataSource = null;
                GridViewPatientList.DataBind();

            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");

                using (mysql)
                {
                    mysql.Open();

                    using (SqlCommand command = new SqlCommand("SELECT * FROM PatientList", mysql))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                GridViewPatientList.DataSource = reader;
                                GridViewPatientList.DataBind();
                                Error_message.Text = "";
                            }
                            else
                            {
                                Error_message.Text = "No data found!";
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
