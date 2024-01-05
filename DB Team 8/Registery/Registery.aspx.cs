using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DB_Team_8.Registery
{
    public partial class Registery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Add items to the DropDownList on the first page load
                DropDownList1.Items.Add(new System.Web.UI.WebControls.ListItem("Patient", "Patient"));
                DropDownList1.Items.Add(new System.Web.UI.WebControls.ListItem("Doctor", "Doctor"));
                DropDownList1.Items.Add(new System.Web.UI.WebControls.ListItem("Pharmacist", "Pharmacist"));
                DropDownList1.Items.Add(new System.Web.UI.WebControls.ListItem("Nurse", "Nurse"));
            }
        }
        protected void Submit(object sender, EventArgs e)
        {
            string selectedUserType = DropDownList1.SelectedValue;
            if (selectedUserType == "Patient")
            {
                Response.Redirect("/Patient_register/Patient_register.aspx");
            }
            else if (selectedUserType == "Doctor")
            {
                Response.Redirect("/Doctor_register/Doctor_register.aspx");
            }
            else if (selectedUserType == "Pharmacist")
            {
                Response.Redirect("/Pharmacist_Home/Register.aspx"); 
            }
            else if (selectedUserType == "Nurse")
            {
                Response.Redirect("/nurse_homepage/nurse_homepage.aspx");
            }
        }
    }
}