using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KUG.Core.DTO
{
    public class ProductDTO
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Details { get; set; }
        public double Discount { get; set; }
        public int Cost { get; set; }
        public DateTime ReleaseDate { get; set; }
        public int CategoryID { get; set; }
        public int GroupID { get; set; }
    }
}
