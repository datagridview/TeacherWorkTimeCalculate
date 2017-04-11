using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin2_3_1_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["TeacherID5"].ToString() + ":" + Session["TeacherName5"].ToString();
        Database mDB = new Database();
        string sql = "select [学号],[姓名],[项目名称],[年度],[总课时] from [项目实践表] where [工号]='" + Session["TeacherID5"].ToString() + "'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label6.Text = "当前修改" + ":" + GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length != 0)
        {
            string a = "未通过";
            Database mDB = new Database();
            string sql = "update [项目实践表] set[状态]='" + a + "'";
            sql += "where[工号]='" + Session["TeacherID5"].ToString() + "'and [学号]='" + TextBox1.Text + "'";
            mDB.ExecuteSQL(sql);
            mDB.Close();
        }
        else
        {
            Response.Write("<script>alert('您没有进行选择！！！');</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length != 0)
        {
            string a = "已审核";
            Database mDB = new Database();
            string sql = "update [项目实践表] set[学号]='" + TextBox1.Text + "',[姓名]='" + TextBox2.Text + "'";
            sql += ",[总课时]='" + TextBox5.Text + "',[年度]='" + TextBox4.Text + "',[状态]='" + a + "'";
            sql += ",[项目名称]='" + TextBox3.Text + "'";
            sql += "where[工号]='" + Session["TeacherID5"] + "'and [学号]='" + TextBox1.Text + "'";
            if (mDB.ExecuteSQL(sql)>0)
            {
                Response.Write("<script>alert('修改成功并审核通过！！！');</script>");
            }
            mDB.Close();
        }
        else
        {
            Response.Write("<script>alert('您没有进行选择！！！');</script>");
        }
    }
    protected void ImageButtonBack_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin2-3-1-1.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length != 0)
        {
            Database mDB = new Database();
            string sql = "delete  from [项目实践表] ";
            sql += "where [工号]='" + Session["TeacherID5"].ToString() + "'and [学号]='" + TextBox1.Text + "'";
            if (mDB.ExecuteSQL(sql) > 0)
            {
                Response.Write("<script>alert('删除成功！！！');</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败！！！');</script>");
            }
            mDB.Close();
        }
        else
        {
            Response.Write("<script>alert('您没有进行选择！！！');</script>");
        }
    }
}