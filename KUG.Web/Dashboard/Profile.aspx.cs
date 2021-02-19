using KUG.Core.Services.User;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KpopUG.Dashboard
{
    public partial class Profile : System.Web.UI.Page
    {
        [Dependency]
        public IUserService UserService { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}