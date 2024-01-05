using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DB_Team_8.Doctors
{
    public partial class Doctors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Patient_User.Name;
            ID.Text = SharedObjects.Patient_User.ID;
        }
        protected void Run(object sender, EventArgs e)
        {
            gridViewDoctors.DataSource = null;
            Label2.Text = "";
            String HosName = Hos.Text;
            SqlConnection mysql=new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");
            mysql.Open();
            SqlCommand cmd = new SqlCommand("CheckDoctorsOfHospital", mysql);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@hospitalName",HosName);
            SqlDataReader res = cmd.ExecuteReader();
            if (res.HasRows)
            {
                gridViewDoctors.DataSource = res;
                gridViewDoctors.DataBind();
            }
            else
            {
                gridViewDoctors.DataBind();
                Label2.Text = "No Doctors found in "+HosName;
            }
        }
    }
}