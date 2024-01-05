using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace DB_Team_8
{
    public class API
    {
        SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");
        
        public Boolean UserLogin(String username, String password)
        {
            mysql.Open();
            SqlCommand cmd = new SqlCommand("userLogin", mysql);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", username);
            cmd.Parameters.AddWithValue("@password", password);
            SqlParameter outputParameter = new SqlParameter("@login_success", SqlDbType.Bit);
            outputParameter.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(outputParameter);
            cmd.ExecuteNonQuery();
            bool LoginSuccess=(bool)outputParameter.Value;
            if (LoginSuccess)
            {
               SqlCommand cmd2 = new SqlCommand("SELECT dbo.GetUser(@ID)", mysql);
                cmd2.CommandType = CommandType.Text;
                cmd2.Parameters.AddWithValue("@ID", username);
                String result = (String)cmd2.ExecuteScalar();
                if (result == "P")
                {
                    cmd2 = new SqlCommand("SELECT * from dbo.AdminViewPatientProfile('"+username+"')", mysql);
                    cmd2.CommandType = CommandType.Text;
                    cmd2.Parameters.AddWithValue("@PatientID", ""+username+"'");
                    SqlDataReader res = cmd2.ExecuteReader();
                    Console.WriteLine($"Debug: SQL Query - {cmd2.CommandText}");
                    Console.WriteLine($"Debug: Parameter Value - {cmd2.Parameters["@PatientID"].Value}");
                    if (res.HasRows)
                    {
                        while (res.Read())
                        {
                            SharedObjects.Patient_User = new PatientUser
                            {
                                Name = res["Name"].ToString(),
                                ID = res["PID"].ToString(),
                                Email = res["email"].ToString(),
                                Address = res["address"].ToString(),
                                BloodType = res["Blood_type"].ToString(),
                                Is_Insured = (bool)res["Is_insured"],
                                ems_ID = res["ems_ID"].ToString(),
                                Insurance_ID = res["Insurance_ID"].ToString(),
                                password = res["password"].ToString(),
                            };
                            
                        }
                        SharedObjects.UserType = "P";
                    }
                
                    }
                else if (result == "PS")
                {
                    cmd2 = new SqlCommand("SELECT * from PharmacistRegistery where Pharmacist_ID='"+username+"'", mysql);
                    cmd2.CommandType = CommandType.Text;
                    //cmd2.Parameters.AddWithValue("@PharmacistID", "" + username + "'");
                    SqlDataReader res = cmd2.ExecuteReader();
                    if (res.HasRows)
                    {
                        while (res.Read())
                        {
                            SharedObjects.Pharmacist_User = new PharmacistUser
                            {
                                Name = res["Name"].ToString(),
                                ID = res["Pharmacist_ID"].ToString(),
                                Email = res["email"].ToString(),
                                Starting_day = res["Starting_day"].ToString(),
                                Experience = res["Experience"].ToString(),
                                Pharmacy_ID = res["Pharmacy_ID"].ToString(),
                                Password = res["password"].ToString(),
                            };
                        }
                        SharedObjects.UserType = "PS";
                    }

                }
                else if (result == "N")
                {
                    cmd2 = new SqlCommand("SELECT * from NurseRegistery where Nurse_ID ='" + username + "'", mysql);
                    cmd2.CommandType = CommandType.Text;
                    SqlDataReader res = cmd2.ExecuteReader();
                    if (res.HasRows)
                    {
                        while (res.Read())
                        {
                            SharedObjects.Nurse = new Nurseprofile
                            {
                                NurseId = res["Nurse_ID"].ToString(),
                                FirstName = res["First_name"].ToString(),
                                MiddleName = res["Middle_name"].ToString(),
                                LastName = res["Last_name"].ToString(),
                                Shift = res["Shift"].ToString(),
                                PID = res["PID"].ToString(),
                                Email = res["email"].ToString(),
                                Password = res["password"].ToString(),
                            };
                        }
                        SharedObjects.UserType = "N";
                    }

                }
                else if (result == "D")
                {
                    cmd2 = new SqlCommand("SELECT * from DoctorRegistery where Doctor_ID ='" + username + "'", mysql);
                    cmd2.CommandType = CommandType.Text;
                    SqlDataReader res = cmd2.ExecuteReader();
                    if (res.HasRows)
                    {
                        while (res.Read())
                        {
                            SharedObjects.Doctor = new Doctorprofile
                            {
                                Doctor_ID = res["Doctor_ID"].ToString(),
                                Name = res["Name"].ToString(),
                                Specialization = res["Specialization"].ToString(),
                                Working_days = res["Working_days"].ToString(),
                                working_hours = res["Working_hours"].ToString(),
                                email = res["email"].ToString(),
                                password = res["password"].ToString(),
                            };
                        }
                        SharedObjects.UserType = "D";
                    }

                }



            }

            mysql.Close();
            return LoginSuccess;

        }

        public void UserUpdate()
        {
            mysql.Open();
            SqlCommand cmd2 = new SqlCommand("SELECT * from dbo.AdminViewPatientProfile('" + SharedObjects.Patient_User.ID + "')", mysql);
            cmd2.CommandType = CommandType.Text;
            cmd2.Parameters.AddWithValue("@PatientID", "" + SharedObjects.Patient_User.ID + "'");
            SqlDataReader res = cmd2.ExecuteReader();
            Console.WriteLine($"Debug: SQL Query - {cmd2.CommandText}");
            Console.WriteLine($"Debug: Parameter Value - {cmd2.Parameters["@PatientID"].Value}");
            if (res.HasRows)
            {
                while (res.Read())
                {
                    SharedObjects.Patient_User = new PatientUser
                    {
                        Name = res["Name"].ToString(),
                        ID = res["PID"].ToString(),
                        Email = res["email"].ToString(),
                        Address = res["address"].ToString(),
                        BloodType = res["Blood_type"].ToString(),
                        Is_Insured = (bool)res["Is_insured"],
                        ems_ID = res["ems_ID"].ToString(),
                        Insurance_ID = res["Insurance_ID"].ToString(),
                        password = res["password"].ToString(),
                    };
                }
            }
            mysql.Close();
        }


}
}