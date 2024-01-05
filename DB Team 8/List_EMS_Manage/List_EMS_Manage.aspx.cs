using DB_Team_8;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.List_EMS_Manage
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
                GridViewEMS.DataSource = null;
                GridViewEMS.DataBind();

            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");

                using (mysql)
                {
                    mysql.Open();

                    using (SqlCommand command = new SqlCommand("SELECT * FROM Manage", mysql))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                GridViewEMS.DataSource = reader;
                                GridViewEMS.DataBind();
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
