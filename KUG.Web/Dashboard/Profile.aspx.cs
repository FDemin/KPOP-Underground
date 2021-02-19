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
        //[Dependency]
        //public IUserService UserService { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            confirmButton.Visible = false;

            fullName.ReadOnly = true;
            contactNumber.ReadOnly = true;
            EMail.ReadOnly = true;
        }

        protected void editButton_Click(object sender, EventArgs e)
        {
            fullName.ReadOnly = false;
            contactNumber.ReadOnly = false;
            EMail.ReadOnly = false;

            confirmButton.Visible = true;
        }

        protected void confirmButton_Click(object sender, EventArgs e)
        {

        }

    }
}