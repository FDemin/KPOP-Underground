using KUG.Core.Services.Auth;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KpopUG.Auth
{
    public partial class WebForm1 : Page
    {
        [Dependency]
        public IAuthService AuthService { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            lblSuccess.Visible = false;
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if(Page.IsValid)
            {
                Session["UserID"] = AuthService.GetUser(inputUsername.Text.Trim(), inputPassword.Text.Trim());
                Session["Username"] = inputUsername.Text.Trim();

                lblSuccess.Visible = true;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = AuthService.UserExists(inputUsername.Text.Trim());
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = AuthService.Authenticate(inputUsername.Text.Trim(), inputPassword.Text.Trim());
        }
    }
}