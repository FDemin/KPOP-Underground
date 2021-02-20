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

            output.FullName = reader.GetString(reader.GetOrdinal("Name"));
            output.EmailAddress = reader.GetString(reader.GetOrdinal("EmailAddress"));
            output.ContactNumber = reader.GetString(reader.GetOrdinal("ContactNumber"));
            output.Koinz = reader.GetInt32(reader.GetOrdinal("Koinz"));

            return output;
        }

        public static ProductDTO ToProduct(this SqlDataReader reader)
        {
            ProductDTO output = new ProductDTO();

            output.ID = reader.GetInt32(reader.GetOrdinal("ProductID"));
            output.Name = reader.GetString(reader.GetOrdinal("Name"));
            output.Cost = Convert.ToInt32(reader.GetDecimal(reader.GetOrdinal("Cost")));

            return output;
        }

        public static GroupDTO ToGroup(this SqlDataReader reader)
        {
            GroupDTO output = new GroupDTO();

            output.ID = reader.GetInt32(reader.GetOrdinal("GroupID"));
            output.Name = reader.GetString(reader.GetOrdinal("Name"));

            return output;
        }

        public static CategoryDTO ToCategory(this SqlDataReader reader)
        {
            CategoryDTO output = new CategoryDTO();

            output.ID = reader.GetInt32(reader.GetOrdinal("CategoryID"));
            output.Name = reader.GetString(reader.GetOrdinal("Name"));

            return output;
        }
    }
}
