using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Messaging;

namespace DB_Team_8.Hospitals
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Name.Text = SharedObjects.Patient_User.Name;
            ID.Text = SharedObjects.Patient_User.ID;
            SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");
            mysql.Open();
            SqlCommand cmd = new SqlCommand("Select Hospitals.Hospital_name,Branch_Location,Email,Doctors_ID,Name from Hospitals inner join CheckHospitalsAndDoctors on Hospitals.Hospital_name=CheckHospitalsAndDoctors.Hospital_Name INNER JOIN doctors on CheckHospitalsAndDoctors.Doctors_ID=doctors.Doctor_ID;", mysql);
            cmd.CommandType = CommandType.Text;
            SqlDataReader res = cmd.ExecuteReader();
            if(res.HasRows)
            {
                gridViewPrescriptions.DataSource = res;
                gridViewPrescriptions.DataBind();
            }
        }
    }
}