using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KUG.Core.Services.User
{
    public class UserService : IUserService
    {
        private readonly string connectionString;

        public UserService(string connectionString)
        {
            this.connectionString = connectionString;
        }
    }
}
