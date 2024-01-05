using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.ViewPatientMedicalHistory
{
    public partial class ViewPatientMedicalHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Doctor.Name;
            ID.Text = SharedObjects.Doctor.Doctor_ID;

        }
        protected void Run(object sender, EventArgs e)
        {
            gridViewMH.DataSource = null;
            gridViewMH.DataBind();




            using (SqlConnection connection = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123"))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("DocViewHis", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@patientID", patientID.Text);
                    SqlDataReader reader2 = command.ExecuteReader();
                    {
                        if (reader2.HasRows)
                        {
                            gridViewMH.DataSource = reader2;
                            gridViewMH.DataBind();
                            Label2.Text = "Done";
                        }
                        else
                        {
                            gridViewMH.DataSource = null;
                            gridViewMH.DataBind();
                            Label2.Text = "No data found!";
                            Label2.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
        }


    }

}
    
