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
       
       

        if (Session["发送者工号"] != null && Session["发送者姓名"] != null && Session["留言标题"] != null)
        {
            TextBox3.Text = Session["发送者工号"].ToString();
            TextBox1.Text = Session["发送者姓名"].ToString();
            TextBox2.Text = Session["留言标题"].ToString();
            TextBox5.Text = Session["留言正文"].ToString();
        }
        else
        {  
        }
        //SqlParameter[] myP = { new SqlParameter("@ID", SqlDbType.VarChar) };
        //myP[0].Value = Session["ID"].ToString();
        //SqlDataReader mreader = a.GetRead("正文", ref myP);

    
    }

    protected void btnBack_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        SqlParameter[] myP = { new SqlParameter("@发送者工号", SqlDbType.VarChar), new SqlParameter("@发送者姓名", SqlDbType.VarChar), new SqlParameter("@接收者工号", SqlDbType.VarChar), new SqlParameter("@接收者姓名", SqlDbType.VarChar), new SqlParameter("@留言标题", SqlDbType.VarChar), new SqlParameter("@留言正文", SqlDbType.VarChar),  new SqlParameter("@回复ID", SqlDbType.VarChar),new SqlParameter("@留言时间", SqlDbType.VarChar) };
        myP[0].Value = Session["登录工号"].ToString();
        myP[1].Value = Session["登录姓名"].ToString();
        myP[2].Value = TextBox3.Text;
        myP[3].Value = TextBox1.Text;

        myP[4].Value = TextBox2.Text;
        myP[5].Value = TextBox4.Text;
        myP[6].Value = Session["ID"].ToString();


        System.DateTime currentTime = new System.DateTime();//获取系统当前时间
        currentTime = System.DateTime.Now;
        myP[7].Value = currentTime;

        UpdateDataWithProc("回复留言", ref myP);
        Response.Write("alert('回复成功！！！')");
    }
    public void UpdateDataWithProc(string SQLStr, ref SqlParameter[] myParam)
    {
        string Con = ConfigurationManager.ConnectionStrings["Teacher"].ConnectionString;
        SqlConnection Myconn = new SqlConnection(Con);
        Myconn.Open();

        SqlCommand cmd = new SqlCommand(SQLStr, Myconn);
        cmd.CommandType = CommandType.StoredProcedure;//表明Cmd对象要执行的命令是存储过程（存储过程名）

        int i;
        if ((myParam == null) == false)
        {
            for (i = 0; i <= myParam.Length - 1; i++)
            {
                cmd.Parameters.Add(myParam[i]);
            }
        }
        cmd.ExecuteNonQuery();
        Myconn.Close();
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
    }
}