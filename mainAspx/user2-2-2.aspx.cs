using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user2_2_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user2-2-1.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string a = "未审核";
        Database mDB = new Database();
        string sql = "insert into [授导学生表]([工号],[教师姓名],[学号],[姓名],[年级],[年度],[总课时],[提交时间],[状态])";
        sql += "values ('" + Session["TeacherID"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "'";
        sql += ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "'";
        sql += ",'" + a + "'";
        if (mDB.ExecuteSQL(sql)>0)
        {
            Response.Write("<script>alert('添加成功！！！');</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败！！！');</script>");
        }
        mDB.Close();
    }
}