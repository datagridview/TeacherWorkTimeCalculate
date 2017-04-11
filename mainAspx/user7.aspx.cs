using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user7 : System.Web.UI.Page
{
    public string a = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox2.Text==TextBox3.Text)
        {
            a = Session["TeacherID"].ToString();
            Database mDB = new Database();
            string sql = "select [密码]='" + TextBox1.Text + "' from [职工表] where[工号]='" + a + "'";
            SqlDataReader mReader = mDB.GetDataReader(sql);
            if (mReader.Read())
            {
                Class1 myclass = new Class1();
                string pwd = myclass.Encrypt(TextBox2.Text);
                string sql2 = "update [职工表] set[密码]='" + pwd + "'where [工号]='" + a + "'";
                int x = mDB.ExecuteSQL(sql2);//
                if (mDB.ExecuteSQL(sql2) > 0)
                {
                    Response.Write("<script>alert('操作成功！！！');</script>");
                }
                else
                {
                    Response.Write("<script>alert('操作失败！！！');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('原密码输入错误！！！');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('两次输入密码不一致！！！');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("user6.aspx");//有待修改！
    }
}