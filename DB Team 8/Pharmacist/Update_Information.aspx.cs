using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Net;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB_Team_8;

namespace Lilo.Pharmacist
{
    public partial class Update_Information : System.Web.UI.Page
    {
        protected void BackButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("PharmacistHomePage.aspx");
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Pharmacist_User.Name;
            ID.Text = SharedObjects.Pharmacist_User.ID;
            if (!IsPostBack)
            {


                trID.Text = SharedObjects.Pharmacist_User.ID;
                /*  trID.ReadOnly = true;*/// da 3shan akeed mynf3sh aghyr el id bta3 el user so hyban bas
                trName.Text = SharedObjects.Pharmacist_User.Name;
                trEmail.Text = SharedObjects.Pharmacist_User.Email;
                trStarting_day.Text = SharedObjects.Pharmacist_User.Starting_day;
                trExperience.Text = SharedObjects.Pharmacist_User.Experience;
                trPharmacy_ID.Text = SharedObjects.Pharmacist_User.Pharmacy_ID;
                trPassword.Text = SharedObjects.Pharmacist_User.Password;

            }
        }
        protected void SubmitMethod(object sender, EventArgs e)
        {
            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");
            mysql.Open();
            SqlCommand cmd = new SqlCommand("UpdatePharProfile", mysql);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PharmacistID", SharedObjects.Pharmacist_User.ID);
            cmd.Parameters.AddWithValue("@New_Name", trName.Text);
            cmd.Parameters.AddWithValue("@New_Starting_day", trStarting_day.Text);
            //cmd.Parameters.AddWithValue("@Experience", trExperience.Text);
            cmd.Parameters.AddWithValue("@New_Pharmacy_ID", trPharmacy_ID.Text);
            cmd.Parameters.AddWithValue("@New_Email", trEmail.Text);
            cmd.Parameters.AddWithValue("@New_Password", trPassword.Text);
            cmd.ExecuteNonQuery();
            UserUpdate();



        }
        public void UserUpdate()
        {
            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");
            mysql.Open();
            SqlCommand cmd2 = new SqlCommand("PharViewProfile", mysql);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.Parameters.AddWithValue("@PharmacistID", SharedObjects.Pharmacist_User.ID);
            SqlDataReader res = cmd2.ExecuteReader();
            if (res.HasRows)
            {
                while (res.Read())
                {
                    SharedObjects.Pharmacist_User = new PharmacistUser
                    {
                        ID = res["Pharmacist_ID"].ToString(),
                        Name = res["Name"].ToString(),
                        Starting_day = res["Starting_day"].ToString(),
                        Experience = res["Experience"].ToString(),
                        Pharmacy_ID = res["Pharmacy_ID"].ToString(),
                        Email = res["email"].ToString(),
                        Password = res["Password"].ToString(),
                    };
                }
            }
            Label2.Text = "Successfully updated your profile";
            mysql.Close();
        }
    }
}