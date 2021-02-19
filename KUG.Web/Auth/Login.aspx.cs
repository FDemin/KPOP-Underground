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
            if (!IsPostBack)
            {
                if (Request.Cookies["Username"] != null && Request.Cookies["Password"] != null)
                {
                    inputUsername.Text = Request.Cookies["Username"].Value;
                    inputPassword.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
            lblSuccess.Visible = false;
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Page.Validate();

            if(Page.IsValid)
            {
                Session["UserID"] = AuthService.GetUser(inputUsername.Text.Trim(), inputPassword.Text.Trim());
                Session["Username"] = inputUsername.Text.Trim();



                if (rememberUser.Checked)
                {
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(30);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
                }
                else
                {
                    Response.Cookies["Username"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

                }
                Response.Cookies["Username"].Value = inputUsername.Text.Trim();
                Response.Cookies["Password"].Value = inputPassword.Text.Trim();

                lblSuccess.Visible = true;
                Response.Redirect("~/Dashboard/Home.aspx");
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