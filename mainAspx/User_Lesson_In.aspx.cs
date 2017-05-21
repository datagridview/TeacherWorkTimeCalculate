using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user1_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select[课程名称],[提交时间],[状态],[课程号] from [课程教学表] where [工号]='" + Session["TeacherID"] + "'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string CourserNum=GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;
        Session["CourserNum"] = CourserNum;
        Database mDB = new Database();
        string sql = "select * from [课程教学表] where[课程号]='" + CourserNum + "'and [工号]='" + Session["TeacherID"] + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if(mReader.Read())
        {
            TextBox1.Text = mReader["课程名称"].ToString();
            TextBox2.Text = mReader["专业"].ToString();
            TextBox3.Text = mReader["年级"].ToString();
            TextBox4.Text = mReader["学生人数"].ToString();
            TextBox5.Text = mReader["周理论节数"].ToString();
            TextBox6.Text = mReader["周实验节数"].ToString();
            TextBox7.Text = mReader["周课时"].ToString();
            TextBox8.Text = mReader["周数"].ToString();
            TextBox9.Text = mReader["总课时"].ToString();
            TextBox10.Text = mReader["课程备注"].ToString();
        }
        mReader.Close();
        mDB.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Lesson_Whole.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "update [课程教学表] set [课程名称]='" + TextBox1.Text + "',[专业]='" + TextBox2.Text + "'";
        sql += ",[年级]='" + TextBox3.Text + "',[学生人数]='" + TextBox4.Text + "',[周理论节数]='" + TextBox5.Text + "'";
        sql += ",[周课时]='" + TextBox7.Text + "',[周数]='" + TextBox8.Text + "',[总课时]='" + TextBox9.Text + "'";
        sql += ",[课程备注]='" + TextBox1.Text + "',[周实验节数]='" + TextBox6.Text + "'"+",[状态]='未审核' ";
        sql += "where [课程号]='" + Session["CourserNum"].ToString() + "'and [工号]='" + Session["TeacherID"].ToString() + "'";
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
}