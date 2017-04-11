using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class user3_1_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select [工号],[讲座名称],[提交时间],[状态]from[素质文化讲座表]where[工号]='" + Session["TeacherID"]+ "'";
        mDB.ExecuteSQL(sql);
        mDB.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["JName"] = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        Database mDB = new Database();
        string sql = "select * from [素质文化讲座表] where[工号]='" + Session["TeacherID"].ToString() + "'and";
        sql += "[课程名称]='" + Session["JName"].ToString() + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if(mReader.Read())
        {
            TextBox1.Text = mReader["讲座名称"].ToString();
            TextBox2.Text = mReader["课时"].ToString();
            TextBox3.Text = mReader["总课时"].ToString();
            TextBox5.Text = mReader["年度"].ToString();
        }
        mReader.Close();
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "update [素质文化讲座表] set[讲座名称]='" + TextBox1.Text + "',[课时]='"+TextBox2.Text+"'";
        sql += ",[总课时]='" + TextBox3.Text + "',[年度]='" + TextBox5.Text + "'";
        sql += "where [工号]='" + Session["TeacherID"].ToString() + "'and[课程名称]='" + Session["JName"].ToString() + "'";
        if (mDB.ExecuteSQL(sql)>0)
        {
            Response.Write("<script>alert('修改成功！！！');</script>");
        }
        mDB.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("user3-1.aspx");
    }
}