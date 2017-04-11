using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user3_1_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string s="未审核";
        Database mDB = new Database();
        string sql = "insert into[素质文化讲座表]([工号],[讲座时长],[讲座名称],[课时],[总课时],[年度],[提交时间],[状态])";
        sql += "values ('" + Session["TeacherID"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "'";
        sql += ",'" + TextBox3.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "'";
        sql += ",'" + s + "'";
        if(mDB.ExecuteSQL(sql)>0)
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
        Response.Redirect("user3-1.aspx");
    }
}