using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin9 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //添加用户，如果数据库里有重名，则显示工号重复，否则就写入数据库
        Class1 myclass = new Class1();
        string pwd = myclass.Encrypt(TextBox2.Text);
        Database mdb = new Database();
        string sql = "select [工号] from [职工表] where [工号]='" + TextBox1.Text + "'";
        if (mdb.ExecuteSQL(sql)>0)
        {
            Response.Write("<script>alert('工号重复！！！');</script>");
        }        
        else
        {
            string sql1 = "insert into[职工表]([工号],[密码],[姓名],[权限]) values('" + TextBox1.Text + "','" + pwd + "','" + TextBox3.Text + "','" + DropDownList1.SelectedItem.Text + "')";
            if (mdb.ExecuteSQL(sql1) > 0)
            {
                Response.Write("<script>alert('操作成功！！！');</script>");
            }
            else
            {
                Response.Write("<script>alert('操作失败！！！');</script>");
            }
        }
        mdb.Close();
    }
}