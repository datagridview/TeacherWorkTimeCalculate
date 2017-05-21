using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Course_Check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select [工号],[教师姓名],[提交时间],[状态] from [课程教学表]";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["TeacherID2"] = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString();
        Session["TeacherName"] = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text.ToString();
        Response.Redirect("Admin_Course_Check_Info.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    /*protected void Button1_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select [工号],[教师姓名],[提交时间],[状态] from [课程教学表] where [工号]+[教师姓名] like'%" + TextBox1.Text + "%'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }*/
}