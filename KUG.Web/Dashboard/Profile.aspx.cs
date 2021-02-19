using KUG.Core.Services.User;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using System.Data;

namespace KpopUG.Dashboard
{
    public partial class Profile : System.Web.UI.Page
    {
        //[Dependency]
        //public IUserService UserService { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            GetUserID(Convert.ToInt32(Session["UserID"]));

            //confirmButton.Visible = false;

            fullName.ReadOnly = true;
            contactNumber.ReadOnly = true;
            EMail.ReadOnly = true;
            Koinz.ReadOnly = true;
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            fullName.ReadOnly = false;
            contactNumber.ReadOnly = false;
            EMail.ReadOnly = false;

            //confirmButton.Visible = true;
        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {

        }

        void GetUserID(int UID)
        {
            String connectionString = "workstation id=KPOP-UG.mssql.somee.com;packet size=4096;user id=KPOP-Public;pwd=1234567890;data source=KPOP-UG.mssql.somee.com;persist security info=False;initial catalog=KPOP-UG";

            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("GetUserID", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                command.Parameters.AddWithValue("UID", Session["UserID"]);
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        fullName.Text = reader.GetString(0);
                        EMail.Text = reader.GetString(1);
                        contactNumber.Text = reader.GetString(2);
                        Koinz.Text = reader.GetInt32(3).ToString();
                    }
                }
            }
        }

        protected void payButton_Click(object sender, EventArgs e)
        {
            String connectionString = "workstation id=KPOP-UG.mssql.somee.com;packet size=4096;user id=KPOP-Public;pwd=1234567890;data source=KPOP-UG.mssql.somee.com;persist security info=False;initial catalog=KPOP-UG";

            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                int value = Convert.ToInt32(Amount.Text);
                var key = "b14ca5898a4e4133bbce2ea2315a1916";
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("Payment", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@UID", Session["UserID"]);
                sqlCmd.Parameters.AddWithValue("@CCNumber", ccNum.Text.Trim());
                //sqlCmd.Parameters.AddWithValue("@Salt", key);
                sqlCmd.Parameters.AddWithValue("@hash_CVV", EncryptString(key, CVV.Text.Trim()));
                sqlCmd.Parameters.AddWithValue("@Amt", value);
                sqlCmd.ExecuteNonQuery();
                Response.Redirect("Profile.aspx");
            }
        }

        public static string EncryptString(string key, string plainText)
        {
            byte[] iv = new byte[16];
            byte[] array;

            using (Aes aes = Aes.Create())
            {
                aes.Key = Encoding.UTF8.GetBytes(key);
                aes.IV = iv;

                ICryptoTransform encryptor = aes.CreateEncryptor(aes.Key, aes.IV);

                using (MemoryStream memoryStream = new MemoryStream())
                {
                    using (CryptoStream cryptoStream = new CryptoStream((Stream)memoryStream, encryptor, CryptoStreamMode.Write))
                    {
                        using (StreamWriter streamWriter = new System.IO.StreamWriter((Stream)cryptoStream))
                        {
                            streamWriter.Write(plainText);
                        }

                        array = memoryStream.ToArray();
                    }
                }
            }

            return Convert.ToBase64String(array);
        }

        protected void top250_Click(object sender, EventArgs e)
        {
            Amount.Text = "250";
        }

        protected void top500_Click(object sender, EventArgs e)
        {
            Amount.Text = "500";
        }

        protected void top1000_Click(object sender, EventArgs e)
        {
            Amount.Text = "1000";
        }

        protected void top2000_Click(object sender, EventArgs e)
        {
            Amount.Text = "2000";
        }
    }
}