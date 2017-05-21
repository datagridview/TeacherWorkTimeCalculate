using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class user2_1_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select * from [毕业论文表] where[工号]='" + Session["TeacherID"] + "'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["StuNum1"] = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text;
        Database mDB = new Database();
        string sql = "select * from[毕业论文表] where [学号]='"+Session["StuNum1"].ToString()+"'";
        sql+="and[工号]='" + Session["TeacherID"].ToString() + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if(mReader.Read())
        {
            TextBox1.Text = mReader["学号"].ToString();
            TextBox2.Text = mReader["姓名"].ToString();
            TextBox3.Text = mReader["年级"].ToString();
            TextBox4.Text = mReader["总课时"].ToString();
        }
        mReader.Close();
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "update [毕业论文表] set [学号]='" + TextBox1.Text + "',[姓名]='" + TextBox2.Text + "'";
        sql += ",[年级]='" + TextBox3.Text + "',[总课时]='" + TextBox4.Text + "'";
        sql += "where [学号]='" + Session["StuNum1"].ToString() + "'and [工号]='" + Session["TeacherID"].ToString() + "'";
        if(mDB.ExecuteSQL(sql)>0)
        {
            Response.Write("<script>alert('修改成功！！！');</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败！！！');</script>");
        }
        mDB.Close();
    }
    protected void 添加_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Stu_Thesis_Info.aspx");
    }
}