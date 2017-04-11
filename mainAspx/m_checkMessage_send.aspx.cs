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

    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ID"] = GridView2.Rows[GridView2.SelectedIndex].Cells[2].Text;
        Session["接收者工号"] = GridView2.Rows[GridView2.SelectedIndex].Cells[3].Text;
        Session["接收者姓名"] = GridView2.Rows[GridView2.SelectedIndex].Cells[4].Text;
        Session["留言标题"] = GridView2.Rows[GridView2.SelectedIndex].Cells[5].Text;
        Session["留言正文"] = GridView2.Rows[GridView2.SelectedIndex].Cells[6].Text;
        Response.Redirect("m_checkMessage_Sview.aspx");
    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlParameter[] myP = { new SqlParameter("@接收者工号", SqlDbType.VarChar) };
        myP[0].Value = Session["登录工号"].ToString();
        GridView2.DataSource = a.GetTablePRO("查看接收留言", ref myP);
        GridView2.DataBind();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        SqlParameter[] myP = { new SqlParameter("@发送者工号", SqlDbType.VarChar) };
        myP[0].Value = Session["登录工号"].ToString();
        GridView2.DataSource = a.GetTablePRO("查看发送留言", ref myP);
        GridView2.DataBind();
    }
}