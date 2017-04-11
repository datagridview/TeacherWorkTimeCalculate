using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user2_2_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select * from[授导学生表] where[工号]='" + Session["TeacherID"].ToString() + "'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "update [授导学生表] set [学号]='" + TextBox1.Text + "'[姓名]='" + TextBox2.Text + "'";
        sql += ",[年级]='" + TextBox3.Text + "',[总课时]='" + TextBox4.Text + "'";
        if (mDB.ExecuteSQL(sql)>0)
        {
            Response.Write("<script>alert('修改成功！！！');</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败！！！');</script>");
        }
        mDB.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user2-2-2.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["StuNum2"] = GridView1.Rows[GridView1.SelectedIndex].Cells[3];
        Database mDB = new Database();
        string sql = "select * from[授导学生表] where [学号]='" + Session["StuNum2"] + "'";
        sql += "and[工号]='" + Session["TeacherID"] + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if (mReader.Read())
        {
            TextBox1.Text = mReader["学号"].ToString();
            TextBox2.Text = mReader["姓名"].ToString();
            TextBox3.Text = mReader["年度"].ToString();
            TextBox4.Text = mReader["总课时"].ToString();
        }
        mReader.Close();
        mDB.Close();
    }
}