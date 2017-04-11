using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin1_1_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["TeacherID2"].ToString() + ":" + Session["TeacherName"].ToString();
        Label3.Text = Session["TeacherID2"].ToString() + "当前修改" + ":";     
        Database mDB = new Database();
        string sql = "select [课程名称],[专业],[年级],[学生人数],[周理论节数],[周实验节数]";
        sql += ",[周课时],[周数],[总课时] from [课程教学表] where [工号]='" + Session["TeacherID2"].ToString() + "'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin1.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {       
        TextBox1.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString();
        TextBox2.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text.ToString();
        TextBox3.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text.ToString();
        TextBox4.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text.ToString();
        TextBox5.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text.ToString();
        TextBox6.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[6].Text.ToString();
        TextBox7.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[7].Text.ToString();
        TextBox8.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[9].Text.ToString();     
    }
    protected void Button3_Click(object sender, EventArgs e)
    {   
        if(TextBox1.Text.Length!=0)
        {
            string a="已审核";
            Database mDB = new Database();
            string sql = "update [课程教学表] set [课程名称]='" + TextBox1.Text + "'";
            sql += ",[专业]='" + TextBox2.Text + "',[年级]='" + TextBox3.Text + "',[学生人数]='" + TextBox4.Text + "'";
            sql += ",[周理论节数]='" + TextBox5.Text + "',[周实验节数]='" + TextBox6.Text + "'";
            sql += ",[周课时]='" + TextBox7.Text + "',[总课时]='" + TextBox8.Text + "',[状态]='" + a + "'";
            sql += "where [工号]='" + Session["TeacherID2"].ToString() + "'and [课程名称]='" + TextBox1.Text + "'";
            if (mDB.ExecuteSQL(sql)>0)
            {
                Response.Write("<script>alert('修改成功并且审核通过！！！');</script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败！！！');</script>");
            }
            mDB.Close();     
        }
        else
        {
            Response.Write("<script>alert('您没有进行选择！！！');</script>");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length != 0)
        {
            Database mDB = new Database();
            string sql = "delete  from [课程教学表] ";
            sql += "where [工号]='" + Session["TeacherID2"].ToString() + "'and [课程名称]='" + TextBox1.Text + "'";
            if (mDB.ExecuteSQL(sql)>0)
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