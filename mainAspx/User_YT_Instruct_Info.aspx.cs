using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_YT_Instruct_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string s = "未审核";
        Database mDB = new Database();
        string sql = "insert into[青年教师指导表]([工号],[教师姓名],[青年教师工号],[青年教师姓名],[年度],[提交时间],[总课时],[状态])";
        sql += "values ('" + Session["TeacherID"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "'";
        sql += ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "'";
        sql += ",'" + s + "')";
        Response.Write(sql);
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_YT_Info.aspx");
    }
}