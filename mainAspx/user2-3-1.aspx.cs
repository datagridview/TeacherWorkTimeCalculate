using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user2_3_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select * from[项目实践表] where[工号]='" + Session["TeacherID"].ToString() + "'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user2-3-2.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["StuNum3"] = GridView1.Rows[GridView1.SelectedIndex].Cells[3];
        Database mDB = new Database();
        string sql = "select * from[项目实践表] where [学号]='" + Session["StuNum3"].ToString() + "'";
        sql += "and[工号]='" + Session["TeacherID"].ToString() + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if (mReader.Read())
        {
            TextBox1.Text = mReader["学号"].ToString();
            TextBox2.Text = mReader["姓名"].ToString();
            TextBox3.Text = mReader["项目名称"].ToString();
            TextBox4.Text = mReader["总课时"].ToString();
        }
        mReader.Close();
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "update [项目实践表] set [学号]='" + TextBox1.Text + "'[姓名]='" + TextBox2.Text + "'";
        sql += ",[项目名称]='" + TextBox3.Text + "',[总课时]='" + TextBox4.Text + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if (mReader.Read())
        {
            Response.Write("<script>alert('修改成功！！！');</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败！！！');</script>");
        }
        mReader.Close();
        mDB.Close();
    }
}