using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KUG.Core.Services.User
{
    public interface IUserService
    {
        void DisplayUser(string FullName, string ContactNumber, string Email);
    }
}
