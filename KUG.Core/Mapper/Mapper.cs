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
                output.FullName = reader.GetString(reader.GetOrdinal("Name"));
                output.EmailAddress = reader.GetString(reader.GetOrdinal("EmailAddress"));
                output.ContactNumber = reader.GetString(reader.GetOrdinal("ContactNumber"));
                output.Koinz = reader.GetInt32(reader.GetOrdinal("Koinz"));

                yield return output;
            }
        }

        public static ProductDTO ToProduct(this SqlDataReader reader)
        {
            ProductDTO output = new ProductDTO();

            reader.Read();
            output.ID = reader.GetInt32(reader.GetOrdinal("ProductID"));
            output.Name = reader.GetString(reader.GetOrdinal("Name"));
            output.Cost = Convert.ToInt32(reader.GetDecimal(reader.GetOrdinal("Cost")));
            output.CategoryID = reader.GetInt32(reader.GetOrdinal("CategoryID"));
            output.GroupID = reader.GetInt32(reader.GetOrdinal("GroupID"));

            return output;
        }

        public static IEnumerable<ProductDTO> ToProducts(this SqlDataReader reader)
        {
            ProductDTO output = new ProductDTO();
            
            while (reader.Read())
            {
                output.ID = reader.GetInt32(reader.GetOrdinal("ProductID"));
                output.Name = reader.GetString(reader.GetOrdinal("Name"));
                output.Cost = Convert.ToInt32(reader.GetDecimal(reader.GetOrdinal("Cost")));
                output.CategoryID = reader.GetInt32(reader.GetOrdinal("CategoryID"));
                output.GroupID = reader.GetInt32(reader.GetOrdinal("GroupID"));

                yield return output;
            }
        }
    }
}
