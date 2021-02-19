using KUG.Core.DTO;
using System.Collections.Generic;

namespace KUG.Core.Services.Product
{
    public interface IProductService
    {
        // filter criteria:
        // show all products from a k-pop group
        // filter products by merch/album
        // filter products by name
        IEnumerable<ProductDTO> LoadProducts();
        IEnumerable<ProductDTO> LoadProducts(string search);
        IEnumerable<ProductDTO> LoadProducts(string search, int categoryId = -1, int groupId = -1);
    }
}