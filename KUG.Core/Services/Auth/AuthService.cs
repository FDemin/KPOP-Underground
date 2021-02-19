using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KUG.Core.Services.Auth
{
    public class AuthService : IAuthService
    {
        public readonly string connectionString;

        public AuthService(string connectionString)
        {
            this.connectionString = connectionString;
        }

        bool IAuthService.Authenticate(string username, string password)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("Authenticate", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                command.Parameters.AddWithValue("@Username", username.Trim());
                command.Parameters.AddWithValue("@Password", password.Trim());

                return (int)command.ExecuteScalar() == 1;
            }
        }

        bool IAuthService.UserExists(string username)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("UserExists", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                command.Parameters.AddWithValue("@Username", username.Trim());

                return (int)command.ExecuteScalar() == 1;
            }
        }

        int IAuthService.GetUser(string username, string password)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("GetUser", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                command.Parameters.AddWithValue("@Username", username.Trim());
                command.Parameters.AddWithValue("@Password", password.Trim());

                using(var rdr = command.ExecuteReader())
                {
                    rdr.Read();

                    return rdr.GetInt32(rdr.GetOrdinal("UserId"));
                }
            }
        }


        void IAuthService.CreateAccount(string username, string password, string fullName, string email, string contactNumber)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("CreateAccount", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@Name", fullName);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Number", contactNumber);

                command.ExecuteNonQuery();
            }
        }
    }
}
