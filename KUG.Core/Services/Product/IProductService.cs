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
    }
}