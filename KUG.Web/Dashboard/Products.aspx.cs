using KUG.Core.Services.Product;
using Microsoft.Practices.Unity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KpopUG.Dashboard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        [Dependency]
        public IProductService ProductService { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (!IsPostBack)
            {
                string name = null;
                int gid = -1;
                int cid = -1;

                object nameQuery = Request.QueryString["name"];
                object GIDQuery = Request.QueryString["GID"];
                object CIDQuery = Request.QueryString["CID"];

                if (nameQuery != null)
                {
                    name = (string)nameQuery;
                }

                if (GIDQuery != null)
                {
                    gid = Convert.ToInt32(GIDQuery);
                }

                if (CIDQuery != null)
                {
                    cid = Convert.ToInt32(CIDQuery);
                }

                categoryDD.DataSource = ProductService.LoadCategories();
                categoryDD.DataTextField = "Name";
                categoryDD.DataValueField = "ID";
                categoryDD.DataBind();

                groupDD.DataSource = ProductService.LoadGroups();
                groupDD.DataTextField = "Name";
                groupDD.DataValueField = "ID";
                groupDD.DataBind();

                productsDataGrid.DataSource = ProductService.LoadProducts(name, cid, gid);
                productsDataGrid.DataBind();
            }

            
        }

        private void LoadData(string search, int cid, int gid)
        {
            var sb = new StringBuilder();
            sb.Append(@"~\Dashboard\Products.aspx");
            sb.Append("?");
            sb.Append("name=");
            sb.Append(search.Trim());

            sb.Append("&");
            sb.Append("CID=");
            sb.Append(cid != -1 ? categoryDD.SelectedValue : "-1");
            sb.Append("&");
            sb.Append("GID=");
            sb.Append(gid != -1 ? groupDD.SelectedValue : "-1");

            Response.Redirect(sb.ToString());
        }

        protected void filterButton_Click(object s, EventArgs e)
        {
            string search = ((TextBox)Master.FindControl("searchBox")).Text;
            LoadData(search, int.Parse(categoryDD.SelectedValue), int.Parse(groupDD.SelectedValue));
        }
    }
}