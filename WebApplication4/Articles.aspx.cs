using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication4
{
    public partial class Articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("server=LAPTOP-UECDG6HE;uid=sa;pwd=123;database=news");
            cn.Open();
            SqlCommand cm = new SqlCommand("insert into articles(title,details,photo) values(@title,@details,@photo)", cn);
            cm.Parameters.Add("@title", txtTit.Text);
            cm.Parameters.Add("@details", txtDe.Text);
            string strImg = System.IO.Path.GetFileName(File1.PostedFile.FileName);
            cm.Parameters.Add("@photo", strImg);
            cm.ExecuteNonQuery();
            cn.Close();
            File1.PostedFile.SaveAs(Server.MapPath("imgs\\")+strImg);

        }
    }
}