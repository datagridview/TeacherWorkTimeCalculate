using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string TeacherID = TextBox1.Text;
        string TeacherPwd = TextBox2.Text;
        if (IsTeacherID(TeacherID))
        {
            Database mDB = new Database();
            string sql = "select TeacherID='" + TeacherID + "' from Users Where TeacherPwd='" + TeacherPwd + "'";
            SqlDataReader mReader = mDB.GetDataReader(sql);
            if (mReader.Read())
            {
                Session["TeacherIDS"] = TeacherID;
                Response.Redirect("Main.aspx");
            }
            else
            {
                Response.Write("<script>alert('账号或密码错误！！！');</script>");
            }
            mReader.Close();
            mDB.Close();
        }
        else
        {
            Response.Write("<script>alert('账号为8位数字，密码为字母加数字');</script>");
        }
    }

    //正则表达式验证
    public bool IsTeacherID(string str_TeacherID)
    {
        return System.Text.RegularExpressions.Regex.IsMatch(str_TeacherID, @"^\d{8}$");
    }
    public bool IsTeacherPwd(string str_TeacherPwd)
    {
        return System.Text.RegularExpressions.Regex.IsMatch(str_TeacherPwd, @"[A-Za-z]+\d$");
    }
}