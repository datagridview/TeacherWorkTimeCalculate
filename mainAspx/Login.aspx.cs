using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;



public partial class Login : System.Web.UI.Page
{
    //MyADOCS a = new MyADOCS();
    protected void Page_Load(object sender, EventArgs e)
    {
        Image2.ImageUrl = "~/YanZhengma.aspx";
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Class1 myclass = new Class1();
        string Y = Session["CheckCode"].ToString();
        string a1 = TextBox3.Text.ToUpper();
        string b1 = Y.ToUpper();
        string a2 = TextBox3.Text.ToLower();
        string b2 = Y.ToLower();
        if (TextBox1.Text.Length == 0)
        {
            TextBox1.Text = "请输入工号！！！";
        }
        
        //SqlParameter[] myP = { new SqlParameter("@工号", SqlDbType.VarChar) };
        //myP[0].Value = TextBox1.Text;
        //GridView1.DataSource = a.GetTablePRO("查找姓名", ref myP);//本来是想把存储过程查找出来的结果直接赋给一个文本框进行显示，但是似乎不太可行，于是就试着用了gridview
        //GridView1.DataBind();
        //GridView1.Visible = false;
           
        if (TextBox2.Text.Length == 0)
        {
            TextBox2.Text = "请输入密码！！！";
        }
        if (TextBox3.Text.Length == 0)
        {
            TextBox3.Text = "请输入验证码！";
        }
        if (a1==b1||a2==b2)
        {
            if (TextBox1.Text.Length * TextBox2.Text.Length != 0)
            {
                TextBox1.Text = Repalces(TextBox1.Text);
                string pwd = Repalces(TextBox2.Text);
                pwd = myclass.Encrypt(pwd);
                TextBox3.Text = Repalces(TextBox3.Text);
                Database mDB = new Database();
                string sql = "select [工号],[姓名] from [职工表] where [工号]='" + TextBox1.Text + "' and [密码]='" + pwd + "'";
                SqlDataReader mReader = mDB.GetDataReader(sql);
                if (mReader.Read())
                {
                    Session["TeacherID"] = TextBox1.Text;
                    Session["登录工号"] = TextBox1.Text;//留言修改
                    Session["登录姓名"] = mReader["姓名"].ToString();//留言修改
                    TextBox2.Text = "请输入密码！！！";
                    Response.Redirect("Choose.aspx");
                }
                else
                {
                    Response.Write("<script>alert('账号或密码有误！！！请重新输入！！！');</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('验证码输入错误！！！请重新输入！！！');</script>");
        }          
    }
    public string Repalces(string str)
    {
        str = str.Replace("*", "");
        str = str.Replace("?", "");
        return str;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('对不起！！！本系统无法帮助您实现密码找回，请到管理员处修改密码！！！');</script>");
    }
}