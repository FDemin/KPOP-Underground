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
            return LoadProducts(null, -1, -1);
        }

        IEnumerable<ProductDTO> IProductService.LoadProducts(string search)
        {
            return LoadProducts(search, -1, -1);
        }

        public IEnumerable<ProductDTO> LoadProducts(string search, int categoryId, int groupId)
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
                    while(rdr.Read())
                    {
                        yield return rdr.ToProduct();
                    }
                    
                }
            }
        }

        IEnumerable<CategoryDTO> IProductService.LoadCategories()
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("LoadCategories", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                using (var rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        yield return rdr.ToCategory();
                    }

                }
            }
        }

        IEnumerable<GroupDTO> IProductService.LoadGroups()
        {
            using (var conn = new SqlConnection(connectionString))
            using (var command = new SqlCommand("LoadGroups", conn) { CommandType = System.Data.CommandType.StoredProcedure })
            {
                conn.Open();

                using (var rdr = command.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        yield return rdr.ToGroup();
                    }

                }
            }
        }
    }
}
