using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KpopUG.Dashboard
{
    public partial class Dashboard : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.Cookies["name"] != null)
                {
                    searchBox.Text = Request.Cookies["name"].Value;
                }
            }
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            Session["name"] = searchBox.Text.Trim();

            Response.Redirect($@"~\Dashboard\Products.aspx{(!string.IsNullOrWhiteSpace(searchBox.Text.Trim()) ? $"?name={searchBox.Text.Trim()}" : null)}");
        }
    }
}