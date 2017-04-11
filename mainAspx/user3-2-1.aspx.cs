using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user3_2_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select [工号],[青年教师工号],[提交时间],[状态]from[青年教师指导表]where[工号]='" + Session["TeacherID"] + "'";
        mDB.ExecuteSQL(sql);
        mDB.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["QNum"] = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        Database mDB = new Database();
        string sql = "select * from [青年教师指导表] where[工号]='" + Session["TeacherID"].ToString() + "'and";
        sql += "[青年教师工号]='" + Session["QNum"].ToString() + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if (mReader.Read())
        {
            TextBox1.Text = mReader["青年教师姓名"].ToString();
            TextBox2.Text = mReader["总课时"].ToString();
            TextBox4.Text = mReader["年度"].ToString();
        }
        mReader.Close();
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "update [青年教师指导表] set[青年教师姓名]='" + TextBox1.Text + "',[总课时]='" + TextBox2.Text + "'";
        sql += ",[年度]='" + TextBox4.Text + "'";
        sql += "where [工号]='" + Session["TeacherID"].ToString() + "'and[课程名称]='" + Session["QNum"].ToString() + "'";
        if (mDB.ExecuteSQL(sql) > 0)
        {
            Response.Write("<script>alert('修改成功！！！');</script>");
        }
        mDB.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user3-2.aspx");
    }
}