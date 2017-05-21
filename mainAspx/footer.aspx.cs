using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class footer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["TeacherID"].ToString();
        Database mDB = new Database();
        string sql = "select [权限] from [职工表] where [工号]="+ Session["TeacherID"];
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if (mReader.Read())
        {
            Label2.Text = mReader["权限"].ToString();
        }
        mReader.Close();
        mDB.Close();
    }
}