using DB_Team_8;
using DB_Team_8.Doctors;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace Lilo.Pharmacist

{
    public partial class Check_Pres : System.Web.UI.Page
    {
        API api = new API();

        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Pharmacist_User.Name;
            ID.Text = SharedObjects.Pharmacist_User.ID;
        }
        protected void BackButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("PharmacistHomePage.aspx");
        }
        protected void SubmitButtonClick(object sender, EventArgs e)
        {
            //dool el 3llla el gmb copy paste f kolo
            Name.Text = SharedObjects.Pharmacist_User.Name;
            ID.Text = SharedObjects.Pharmacist_User.ID;/// come back later 3shan m3fsh leh msh shaghalla!!!!

            try
            {
                gridViewPrescriptions.DataSource = null;// da bysheel el table law 7d katb inputs ghalat b3d ma kan tal3 input sah
                gridViewPrescriptions.DataBind();
                Error_Message.Text = ""; // nafs el haga bas ll error message

                // Get the mysql string from configuration
                SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");

                // Create a SqlConnection using the retrieved mysql string
                using (mysql)
                {
                    mysql.Open();
                    string doctorID = txtDoctorID.Text;
                    string patientID = txtPID.Text;
                    string dateIssued = txtDateIssued.Text;

                    // Create a SqlCommand for the SELECT statement to call the table-valued function
                    using (SqlCommand command = new SqlCommand("SELECT * FROM Prescription where Doctor_id='"+ doctorID + "' and PID='"+patientID+"' and Date_issued='"+ dateIssued+"'", mysql))
                    {
                        //INPUT MN el front end input boxes
                        // string pharmacistID = txtPharmacistID.Text;


                        // command.Parameters.AddWithValue("@Pharmacist_ID", pharmacistID);
                        command.CommandType =System.Data.CommandType.Text;
                        //command.Parameters.AddWithValue("@Doctor_ID", doctorID);
                        //command.Parameters.AddWithValue("@PID", patientID);
                        //command.Parameters.AddWithValue("@Date_issued", dateIssued);

                        // Execute the SELECT statement
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)// law la2a values
                            {

                                gridViewPrescriptions.DataSource = reader;
                                gridViewPrescriptions.DataBind();
                                // Clear any previous error message
                                Error_Message.Text = "";
                                reader.Close();
                                SqlCommand cmd = new SqlCommand("CheckPresc", mysql);
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.AddWithValue("@Pharmacist_ID", SharedObjects.Pharmacist_User.ID);
                                cmd.Parameters.AddWithValue("@Doctor_ID", doctorID);
                                cmd.Parameters.AddWithValue("@PID", patientID);
                                cmd.Parameters.AddWithValue("@Date_issued", dateIssued);
                                cmd.ExecuteNonQuery();
                            }
                            else
                            {
                                //error
                                Error_Message.Text = "No data found for the provided values! Try again.";
                                Error_Message.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions appropriately
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}