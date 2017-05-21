using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_YT_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select [工号],[青年教师工号],[提交时间],[状态]from[青年教师指导表]where[工号]='" + Session["TeacherID"].ToString() + "'";
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_YT_Instruct.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_YT_Instruct_Info.aspx");
    }
}