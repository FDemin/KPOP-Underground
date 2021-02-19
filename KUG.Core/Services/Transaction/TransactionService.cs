using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KUG.Core.Services.Transaction
{
    public class TransactionService : ITransactionService
    {
        private readonly string connectionString;

        public TransactionService(string connectionString)
        {
            this.connectionString = connectionString;
        }
    }
}
