using KUG.Core.DTO;
using System;
using System.Collections.Generic;
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

        }

        IEnumerable<ProductDTO> IProductService.LoadProducts(string search)
        {

        }

        IEnumerable<ProductDTO> IProductService.LoadProducts(string search, int categoryId, int groupId)
        {

        }
    }
}
