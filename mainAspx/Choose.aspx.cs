using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Choose : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select [权限] from [职工表] where [工号]='" + Session["TeacherID"].ToString() + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if ((mReader.Read()) && (mReader["权限"].ToString() == "管理员"))
        {
            Response.Redirect("main.aspx");           
        }
        else
        {
            Response.Write("<script>alert('您不是管理员，请点击普通用户登录！！！');</script>");
        }
        mReader.Close();
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("main2.aspx");
    }
}