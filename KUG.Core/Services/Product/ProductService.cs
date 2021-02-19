using KUG.Core.DTO;
using KUG.Core.Mapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KUG.Core.Services.Product
{
    public class ProductService : IProductService
    {
        private readonly string connectionString;

        public ProductService(string connectionString)
        {
            this.connectionString = connectionString;
        }

        IEnumerable<ProductDTO> IProductService.LoadProducts()
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("LoadProducts", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                using(var rdr = command.ExecuteReader())
                {
                    return rdr.ToProducts();
                }
            }
        }

        IEnumerable<ProductDTO> IProductService.LoadProducts(string search)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("LoadProducts", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                command.Parameters.AddWithValue("@search", search);

                using (var rdr = command.ExecuteReader())
                {
                    return rdr.ToProducts();
                }
            }
        }

        IEnumerable<ProductDTO> IProductService.LoadProducts(string search, int categoryId, int groupId)
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("LoadProducts", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                command.Parameters.AddWithValue("@search", search);
                command.Parameters.AddWithValue("@cid", categoryId);
                command.Parameters.AddWithValue("@gid", groupId);

                using (var rdr = command.ExecuteReader())
                {
                    return rdr.ToProducts();
                }
            }
        }
    }
}
