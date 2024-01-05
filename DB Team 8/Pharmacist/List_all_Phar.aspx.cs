using DB_Team_8;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lilo
{
    public partial class List_all_Phar : System.Web.UI.Page
    {
        protected void BackButtonClick(object sender, EventArgs e)
        {
            Response.Redirect("PharmacistHomePage.aspx");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Name.Text = SharedObjects.Pharmacist_User.Name;
            ID.Text = SharedObjects.Pharmacist_User.ID;

            // Clear the GridView and error message
            gridViewPharmacists.DataSource = null;
            gridViewPharmacists.DataBind();
            Error_Message.Text = "";

            try
            {
                // Get the mysql string from configuration
                SqlConnection mysql = new SqlConnection("server=SEENO;database=final_test;uid=sa;pwd=123");

                // Create a SqlConnection using the retrieved mysql string
                using (mysql)
                {
                    mysql.Open();

                    // Create a SqlCommand to execute your query or procedure
                    using (SqlCommand command = new SqlCommand("SELECT * FROM AdminViewPharmacists", mysql))
                    {
                        command.CommandType = System.Data.CommandType.Text;
                        // Execute the query
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                // Bind the GridView with the retrieved data
                                gridViewPharmacists.DataSource = reader;
                                gridViewPharmacists.DataBind();
                            }
                            else
                            {
                                // Display an error message
                                Error_Message.Text = "No data found.";
                                Error_Message.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions appropriately
                Error_Message.Text = "Error: " + ex.Message;
                Error_Message.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}