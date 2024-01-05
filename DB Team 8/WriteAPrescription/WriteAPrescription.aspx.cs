using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.WriteAPrescription
{
    public partial class WriteAPrescription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Doctor.Name;
            ID.Text = SharedObjects.Doctor.Doctor_ID;
        }
        protected void Submit(object sender, EventArgs e)
        {
            Label2.Text = "";
            Label4.Text = "";
            using (SqlConnection connection = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123"))

            {
                connection.Open();

                using (SqlCommand command = new SqlCommand("DocWritePresc", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@doctorID", SharedObjects.Doctor.Doctor_ID);
                    command.Parameters.AddWithValue("@patientID", PIDText.Text);
                    command.Parameters.AddWithValue("@Date", Calendar1.SelectedDate);
                    SqlParameter outputParameter = new SqlParameter("@successBit", SqlDbType.Bit);
                    outputParameter.Direction = ParameterDirection.Output;
                    command.Parameters.Add(outputParameter);
                    command.ExecuteNonQuery();
                    bool Success = (bool)outputParameter.Value;
                    if (Success)
                    {
                        Label4.Text = "Successfully Wrote A Prescription for patient: " + PIDText.Text + " by Doctor: " + SharedObjects.Doctor.Doctor_ID;

                    }
                    else
                    {
                        Label2.Text = "Could not Write A Prescription. Please review details and try again.";
                    }
                }

            }
        }
    }
}
    
