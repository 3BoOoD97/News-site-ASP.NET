using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Welcome  "+Session["un"].ToString();
        }

        protected void AddUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("reg.aspx");
        }

        protected void AddArticle_Click(object sender, EventArgs e)
        {
            Response.Redirect("Articles.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditArt.aspx");
        }
    }
}