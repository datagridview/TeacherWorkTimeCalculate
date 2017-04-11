using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string YAndS = "2016年2-9月（春季学期）教科院本科教学工作量统表";
        int i1 = YAndS.IndexOf("（");
        int i2 = YAndS.IndexOf("）");
        string strY = YAndS.Substring(0, i1);
        string strS = YAndS.Substring(i1, i2-i1);
    }
}