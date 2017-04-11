using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user1_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "insert into [课程教学表]([工号],[教师姓名],[课程号],[课程名称],[专业],[年级],[学生人数],[周理论节数]";
        sql += ",[周实验节数],[周课时],[周数],[总课时],[课程备注],[状态],[提交时间])";
        sql += "values('" + Session["TeacherID"] + "','" + TextBox11.Text + "','" + TextBox12.Text + "'";
        sql += ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'";
        sql += ",'" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "'";
        sql += ",'" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "'";
        sql += ",'" + TextBox10.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "')";
        if (mDB.ExecuteSQL(sql) > 0)
        {
            Response.Write("<script>alert('修改成功！！！');</script>");
        }
        else
        {
            Response.Redirect("<script>alert('修改失败！！！');</script>");
        }
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("user1.aspx");
    }
}