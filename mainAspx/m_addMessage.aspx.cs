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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        SqlParameter[] myP = { new SqlParameter("@发送者工号", SqlDbType.VarChar), new SqlParameter("@发送者姓名", SqlDbType.VarChar), new SqlParameter("@接收者工号", SqlDbType.VarChar), new SqlParameter("@接收者姓名", SqlDbType.VarChar) ,new SqlParameter("@留言标题", SqlDbType.VarChar), new SqlParameter("@留言正文", SqlDbType.VarChar), new SqlParameter("@留言时间", SqlDbType.VarChar) };
        myP[0].Value = Session["登录工号"].ToString();
        myP[1].Value = Session["登录姓名"].ToString();
        myP[2].Value = ListBox1.Text;
        myP[3].Value = Session["接收者姓名111"].ToString();
        myP[4].Value = TextBox2.Text;
        myP[5].Value = TextBox3.Text;

        System.DateTime currentTime = new System.DateTime();//获取系统当前时间
        currentTime = System.DateTime.Now;
        myP[6].Value = currentTime;

        UpdateDataWithProc("添加留言", ref myP);
        Response.Write( "alert('留言成功！！！')");
          
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlParameter[] myP = { new SqlParameter("@工号", SqlDbType.VarChar,) };
        //myP[0].Value = ListBox1.Text;
        //GridView1.DataSource = a.GetTablePRO("查找姓名", ref myP);//本来是想把存储过程查找出来的结果直接赋给一个文本框进行显示，但是似乎不太可行，于是就试着用了gridview
        //GridView1.DataBind();
        //GridView1.Visible = false;
        //Session["接收者姓名111"] = GridView1.Rows[0].Cells[0].Text;
        //TextBox4.Text = Session["接收者姓名111"].ToString();
        SqlParameter myP1 = new SqlParameter();
        myP1.ParameterName = "@工号";
        myP1.SqlDbType = SqlDbType.VarChar;
        myP1.Size = 8;
        myP1.Direction = ParameterDirection.Input;
        myP1.Value = ListBox1.Text;


        SqlParameter myP2 = new SqlParameter();
        myP2.ParameterName = "@name";
        myP2.SqlDbType = SqlDbType.VarChar;
        myP2.Size = 8;
        myP2.Direction = ParameterDirection.Output;

        string Con = ConfigurationManager.ConnectionStrings["Teacher"].ConnectionString;
        SqlConnection Myconn = new SqlConnection(Con);
        Myconn.Open();
        SqlCommand cmd = new SqlCommand( "查找姓名",Myconn);
        cmd.CommandType = CommandType.StoredProcedure;//表明Cmd对象要执行的命令是存储过程（存储过程名）
        cmd.Parameters.Add(myP1);
        cmd.Parameters.Add(myP2);
        cmd.ExecuteNonQuery();
        Myconn.Close();

        TextBox4.Text = myP2.Value.ToString();

    }
}