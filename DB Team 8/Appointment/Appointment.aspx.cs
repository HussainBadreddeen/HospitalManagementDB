using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.Appointment
{
    public partial class Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Patient_User.Name;
            ID.Text = SharedObjects.Patient_User.ID;


        }
        protected void Submit(object sender, EventArgs e)
        {
            Label2.Text = "";
            Label4.Text = "";
            String UserID = SharedObjects.Patient_User.ID;
            String DoctorID = "D" + Doc_ID.Text;
            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");
            mysql.Open();
            SqlCommand cmd = new SqlCommand("makeAppointment", mysql);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Doctor_id", DoctorID);
            cmd.Parameters.AddWithValue("@Patientid", UserID);
            cmd.Parameters.AddWithValue("@Date", Calendar1.SelectedDate);
            SqlParameter outputParameter = new SqlParameter("@successBit", SqlDbType.Bit);
            outputParameter.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(outputParameter);
            cmd.ExecuteNonQuery();
            bool Success = (bool)outputParameter.Value;
            if (Success)
            {
                Label4.Text="Successfully booked an appointment for patient: "+UserID+" for Doctor: "+Doc_ID.Text;
            }
            else
            {
                Label2.Text = "Could not Book Appointment. Please review details and try again.";
            }
        }
    }
}