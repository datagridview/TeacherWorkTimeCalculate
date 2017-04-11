using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin2_1_1_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["TeacherID3"].ToString() + ":" + Session["TeacherName3"].ToString();
        Label3.Text = "当前修改" + ":" + Session["TeacherID3"].ToString() + Session["TeacherName3"].ToString(); 
        Database mDB = new Database();
        string sql = "select [学号],[姓名],[年级],[年度],[总课时]";
        sql += " from [毕业论文表] where [工号]='" + Session["TeacherID3"].ToString() + "'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin2-1.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text.Length!=0)
        {
            string a = "未通过";
            Database mDB = new Database();
            string sql = "update [毕业论文表] set[状态]='" + a + "'";
            sql += "where[工号]='" + Session["TeacherID3"].ToString() + "'and [学号]='" + TextBox1.Text + "'";
            mDB.ExecuteSQL(sql);
            mDB.Close();
        }
        else
        {
            Response.Write("<script>alert('您没有进行选择！！！');</script>");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text.Length!=0)
        {
            string a = "已审核";
            Database mDB = new Database();
            string sql = "update [毕业论文表] set[学号]='" + TextBox1.Text + "',[姓名]='" + TextBox2.Text + "'";
            sql += ",[总课时]='" + TextBox3.Text + "',[年度]='" + TextBox4.Text + "',[状态]='" + a + "'";
            sql += "where[工号]='" + Session["TeacherID3"].ToString() + "'and [学号]='" + TextBox1.Text + "'";
            if (mDB.ExecuteSQL(sql)>0)
            {
                Response.Write("<script>alert('修改成功并审核通过！！！');</script>");
            }
            else
            {
                Response.Write("<script>alert('审核失败！！！');</script>");
            }
            mDB.Close();        
        }
        else
        {
            Response.Write("<script>alert('您没有进行选择！！！');</script>");
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString();
        TextBox2.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text.ToString();
        TextBox3.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text.ToString();
        TextBox4.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text.ToString();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length != 0)
        {
            Database mDB = new Database();
            string sql = "delete  from [毕业论文表] ";
            sql += "where [工号]='" + Session["TeacherID3"].ToString() + "'and [学号]='" + TextBox1.Text + "'";
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