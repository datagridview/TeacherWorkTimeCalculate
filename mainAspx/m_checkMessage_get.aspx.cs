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

        //SqlParameter[] myP = { new SqlParameter("@状态", SqlDbType.VarChar) };
        //myP[0].Value = "未处理";
        //GridView3.DataSource = a.GetTablePRO("查看状态", ref myP);
        //GridView3.DataBind();

        //Label5.Text = GridView3.Rows.Count.ToString();
        //GridView3.Visible = false;
        

    }
 
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["ID"] = GridView2.Rows[GridView2.SelectedIndex].Cells[2].Text;
        Session["发送者工号"] = GridView2.Rows[GridView2.SelectedIndex].Cells[3].Text;
        Session["发送者姓名"] = GridView2.Rows[GridView2.SelectedIndex].Cells[4].Text;
        Session["留言标题"] = GridView2.Rows[GridView2.SelectedIndex].Cells[5].Text;
        Session["留言正文"] = GridView2.Rows[GridView2.SelectedIndex].Cells[6].Text;
        Response.Redirect("m_checkMessage_Gview.aspx");//点击查看，进入查看正文的页面，想用一个session值记录当前页面上的数据，然后在正文页面直接显示出来，但是在正文页面做了个判断，似乎session没获取到值
       
            
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlParameter[] myP = { new SqlParameter("@接收者工号", SqlDbType.VarChar) };
        myP[0].Value = Session["登录工号"].ToString();
        GridView2.DataSource = a.GetTablePRO("查看接收留言", ref myP);
        GridView2.DataBind();
        ////int i = 0,j=0;
         
        ////for(i=0;i<GridView2.Rows.Count;i++)
        ////{
        ////    if (string.Compare(GridView2.Rows[i].Cells[9].Text, "未处理")==1)
        ////    //if (GridView2.Rows[i].Cells[9].Text == "未处理") 
        ////        j++;
        ////}

        //Label5.Text = GridView2.Rows[1].Cells[9].Text.ToString();


        //Label5.Text = j.ToString();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        SqlParameter[] myP = { new SqlParameter("@发送者工号", SqlDbType.VarChar) };
        myP[0].Value = Session["登录工号"].ToString();
        GridView2.DataSource = a.GetTablePRO("查看发送留言", ref myP);
        GridView2.DataBind();
    }
}