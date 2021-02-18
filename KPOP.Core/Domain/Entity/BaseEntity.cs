using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KPOP.Core.Domain.Entity
{
    public abstract class BaseEntity
    {
        public int ID { get; protected set; }

        protected BaseEntity()
        {

        }
    }
}
