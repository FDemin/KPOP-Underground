using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace KUG.Core.Services.User
{
    public class UserService : IUserService
    {
        private readonly string connectionString;

        public UserService(string connectionString)
        {
            this.connectionString = connectionString;
        }

        void IUserService.DisplayUser(string FullName, string ContactNumber, string Email)
        {

        }
    }
}
