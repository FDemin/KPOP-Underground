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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=NITSUA;Initial Catalog=KpopUndergroundWeb;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select Username from KUsers where Username = '" + inputUsername.Text + "' ", connectionString);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Username already exists!');</script>");
                }
                else
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("KUserRegister", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    //sqlCmd.Parameters.AddWithValue("@UID", (hfUID.Value == " " ? "0" : hfUID.Value.Trim()));
                    sqlCmd.Parameters.AddWithValue("@User", inputUsername.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Pass", inputPassword.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Name", inputName.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Contact", inputPhone.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Em", inputEmail.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Clear();
                    //lblSuccess.Text = "Success!";

                    Response.Redirect("SignIn(master).aspx"); 
                }

            }
        }

        void Clear()
        {
            inputUsername.Text = inputPassword.Text = inputName.Text = inputPhone.Text = inputEmail.Text = " ";

            //inputUsername.Attributes.Add("Placeholder", "Username");
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }
    }
}