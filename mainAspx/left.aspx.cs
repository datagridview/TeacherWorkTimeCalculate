using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class left : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToString();
        Label1.Text = Session["登录姓名"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
}