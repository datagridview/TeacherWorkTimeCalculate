using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select * from [工作量统计表]";
        mDB.ExecuteSQL(sql);
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Tgonghao"] = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        Response.Redirect("admin5-1.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select * from 工作量统计表 where [工号] like'%" + TextBox1.Text + "%'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
}