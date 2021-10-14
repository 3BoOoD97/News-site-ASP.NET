using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("server=LAPTOP-UECDG6HE;uid=sa;pwd=123;database=news");
            SqlCommand cm = new SqlCommand("select * from users where username=@username and password=@password", cn);
            cm.Parameters.Add("@username", txtUN.Text);
            cm.Parameters.Add("@password", txtPW.Text);
            SqlDataAdapter da= new SqlDataAdapter(cm);
            DataSet ds = new DataSet();
            da.Fill(ds, "users");
            if (ds.Tables["users"].Rows.Count == 0)
                Response.Write("Invalid User");

            else
            {
                Session["un"] = txtUN.Text;
                Response.Redirect("Settings.aspx");

            }
        }
    }
}