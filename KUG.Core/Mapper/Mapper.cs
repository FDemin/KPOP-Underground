using KUG.Core.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KUG.Core.Mapper
{
    public static class Mapper
    {
        public static UserDTO ToUser(this SqlDataReader reader)
        {
            UserDTO output = new UserDTO();

            reader.Read();
            output.FullName = reader.GetString(reader.GetOrdinal("Name"));
            output.EmailAddress = reader.GetString(reader.GetOrdinal("EmailAddress"));
            output.ContactNumber = reader.GetString(reader.GetOrdinal("ContactNumber"));
            output.Koinz = reader.GetInt32(reader.GetOrdinal("Koinz"));

            return output;
        }

        public static IEnumerable<UserDTO> ToUsers(this SqlDataReader reader)
        {
            UserDTO output = new UserDTO();
            while(reader.Read())
            {
                reader.Read();
                output.FullName = reader.GetString(reader.GetOrdinal("Name"));
                output.EmailAddress = reader.GetString(reader.GetOrdinal("EmailAddress"));
                output.ContactNumber = reader.GetString(reader.GetOrdinal("ContactNumber"));
                output.Koinz = reader.GetInt32(reader.GetOrdinal("Koinz"));

                yield return output;
            }
        }
    }
}
