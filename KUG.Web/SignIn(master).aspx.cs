using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace KpopUG
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=NITSUA;Initial Catalog=KpopUndergroundWeb;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
            lblSuccess.Visible = false;
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM KUsers WHERE username=@Username AND password=@Password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@Username", inputUsername.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", inputPassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["Username"] = inputUsername.Text.Trim();
                    //Response.Redirect("SignUp.aspx"); 
                    lblSuccess.Visible = true; //TO BE EDITED SHOULD REDIRECT TO HOME
                }
                else { lblError.Visible = true; }
            }
        }
    }
}