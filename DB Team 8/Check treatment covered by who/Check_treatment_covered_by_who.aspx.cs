using DB_Team_8;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.Check_treatment_covered_by_who
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        API api = new API();
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Nurse.FirstName + " " + SharedObjects.Nurse.LastName;
            ID.Text = SharedObjects.Nurse.NurseId;
            Label label2 = new Label();
            label2.Text = "Redirecting was a success";
        }
        protected void Click_Check(object sender, EventArgs e)
        {
            try
            {
                Error_message.Text = "";
            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");
                using (mysql)
                {
                    mysql.Open();


                    using (SqlCommand command = new SqlCommand("select dbo.Covered(@Cost,@PID)", mysql))
                    {
                        String PatientID = PID.Text;
                        String Costa = Cost.Text;
                        command.Parameters.AddWithValue("@PID", PatientID);
                        command.Parameters.AddWithValue("@Cost", Costa);

                        object result = command.ExecuteScalar();
                        if (result != null)
                        {
                            string result2 = result.ToString();
                            Label3Check.Text = result2;
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
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
        }
    }
}


