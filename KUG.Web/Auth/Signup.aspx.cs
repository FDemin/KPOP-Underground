using KUG.Core.Services.Auth;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KpopUG.Auth
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        [Dependency]
        public IAuthService authService { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = !authService.UserExists(inputUsername.Text.Trim());
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if(Page.IsValid)
            {
                authService.CreateAccount(
                    TrimText(inputUsername.Text),
                    TrimText(inputPassword.Text),
                    TrimText(inputName.Text),
                    TrimText(inputEmail.Text),
                    TrimText(inputPhone.Text));

                Response.Redirect("SignupSuccess.aspx");
            }
        }

        private string TrimText(string str)
        {
            return str.Trim();
        }
    }
}