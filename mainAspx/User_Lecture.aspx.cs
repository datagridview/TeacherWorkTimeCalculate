using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Service_Repair : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select [工号],[讲座名称],[提交时间],[状态] from[素质文化讲座表] where[工号]='" + Session["TeacherID"].ToString() + "'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Lecture_State.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Lecture_Update.aspx");
    }
}