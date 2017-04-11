using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    MyADOCS a = new MyADOCS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["接收者工号"] != null && Session["接收者姓名"] != null && Session["留言标题"] != null)
        {
            TextBox3.Text = Session["接收者工号"].ToString();
            TextBox1.Text = Session["接收者姓名"].ToString();
            TextBox2.Text = Session["留言标题"].ToString();
            TextBox4.Text = Session["留言正文"].ToString();

        }
    }

    protected void btnBack_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }
}