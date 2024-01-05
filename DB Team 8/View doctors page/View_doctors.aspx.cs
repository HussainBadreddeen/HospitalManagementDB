using DB_Team_8;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.View_doctors_page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            API api = new API();
            try
            {
                Name.Text = SharedObjects.Nurse.FirstName + " " + SharedObjects.Nurse.LastName;
                ID.Text = SharedObjects.Nurse.NurseId;
                GridViewDoctors.DataSource = null;
                GridViewDoctors.DataBind();

            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");

                using (mysql)
                {
                    mysql.Open();

                    using (SqlCommand command = new SqlCommand("SELECT * FROM Check_Hospital_Doctors", mysql))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                GridViewDoctors.DataSource = reader;
                                GridViewDoctors.DataBind();
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
