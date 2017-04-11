using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select * from [职工表]";
        mDB.ExecuteSQL(sql);
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 myclass = new Class1();
        string pwd = myclass.Encrypt(TextBox3.Text);
        Database mDB = new Database();
        string sql = "update [职工表] set[姓名]='" + TextBox1.Text + "',[性别]='" + TextBox2.Text + "',[密码]='" + pwd + "'";
        sql += ",[出生年月]='" + TextBox4.Text + "',[院系]='" + TextBox5.Text + "',[职称]='" + TextBox6.Text + "'";
        sql += ",[联系方式]='" + TextBox7.Text + "',[权限]='" + DropDownList1.SelectedItem.Text + "' where [工号]='" + Label3.Text + "'";
        if(mDB.ExecuteSQL(sql)>0)
        {
            Response.Write("<script>alert('操作成功！！！');</script>");
        }
        else
        {
            if(TextBox4.Text.Length!=8)
            {
                Response.Write("<script>alert('出生年月格式不正确！！！');</script>");
            }
            Response.Write("<script>alert('操作失败！！！');</script>");     
        }
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //新加功能
        if(Label3.Text.Length!=0)
        {
            Database mDB = new Database();
            string sql = "delete from [职工表] where [工号]='" + Label3.Text + "'";
            if (mDB.ExecuteSQL(sql) > 0)
            {
                Response.Write("<script>alert('操作成功！！！');</script>");       
            }
            else
            {
                Response.Write("<script>alert('操作失败！！！');</script>");
            }
            mDB.Close();
        }
        else
        {
            Response.Write("<script>alert('您还没有进行选择！！！');</script>");
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text.ToString();
        TextBox2.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[6].Text.ToString();
        TextBox3.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text.ToString();
        TextBox4.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text.ToString();
        TextBox5.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[11].Text.ToString();
        TextBox6.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[12].Text.ToString();
        TextBox7.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[7].Text.ToString();
        DropDownList1.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[10].Text.ToString();
        Label3.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if(TextBox8.Text.Length!=0)
        {
            Database mDB = new Database();
            string sql = "select * from [职工表] where [工号]+[姓名] like'%" + TextBox8.Text + "%'";
            GridView1.DataSource = mDB.getDataTable(sql);
            GridView1.DataBind();
            mDB.Close();
        }
    }
}