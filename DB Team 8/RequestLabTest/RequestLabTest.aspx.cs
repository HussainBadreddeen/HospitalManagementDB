using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.RequestLabTest
{
    public partial class RequestLabTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Doctor.Name;
            ID.Text = SharedObjects.Doctor.Doctor_ID;
        }
        protected void Run(object sender, EventArgs e)
        {
            using (SqlConnection connection = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123"))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("DoctorReqLab", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    //doctor id
                    // patientID.Text = PID
                    //String labTestID = labTestID.TeXt;
                    command.Parameters.AddWithValue("@doctorID", SharedObjects.Doctor.Doctor_ID);
                    command.Parameters.AddWithValue("@patientID", patientID.Text);
                    command.Parameters.AddWithValue("@labTestID", labTestID.Text);
                    SqlParameter outputParameter = new SqlParameter("@out", SqlDbType.Bit);
                    outputParameter.Direction = ParameterDirection.Output;
                    command.Parameters.Add(outputParameter);
                    command.ExecuteNonQuery();
                    bool Success = (bool)outputParameter.Value;
                    if (Success)
                    {
                        Label2.Text = "Successfully requested lab test";
                    }

                }
            }
        }
    }

}
    
