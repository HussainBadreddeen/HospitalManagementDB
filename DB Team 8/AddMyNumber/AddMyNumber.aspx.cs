using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.AddMyNumber
{
    public partial class AddMyNumber : System.Web.UI.Page
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

                // Assuming Doc_PhoneNum table has columns Doctor_ID and Phone_Number


                using (SqlCommand command = new SqlCommand("addMobile", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    //doctor id
                    // patientID.Text = PID
                    //String labTestID = labTestID.TeXt;
                    command.Parameters.AddWithValue("@Doctor_ID", SharedObjects.Doctor.Doctor_ID);
                    command.Parameters.AddWithValue("@mobile_number", phoneNumber.Text);

                    command.ExecuteNonQuery();

                    Label2.Text = "Successfully reqistered phone number";


                }
            }
        }
    }
}
    
