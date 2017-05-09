using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin5_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {      
        Database mDB = new Database();
        string sql22 = "select 姓名 from 职工表 where 工号='" + Session["Tgonghao"] + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql22);
        if (mReader.Read())
        {
            Label10.Text = mReader["姓名"].ToString();
        }
        mReader.Close();
        string sql1 = "select 工号,姓名 from 职工表 where 工号='" + Session["Tgonghao"] + "'";
        GridView2.DataSource = mDB.getDataTable(sql1);
        GridView2.DataBind();
        string sql2 = "select 课程号,课程名称,专业,年级,学生人数,周课时,周数,总课时 from 课程教学表 where 工号='" + Session["Tgonghao"] + "'";
        GridView3.DataSource = mDB.getDataTable(sql2);
        GridView3.DataBind();
        string sql3 = "select 学号,姓名,年级,年度,总课时 from 毕业论文表 where 工号='" + Session["Tgonghao"] + "'";
        GridView4.DataSource = mDB.getDataTable(sql3);
        GridView4.DataBind();
        string sql4 = "select 学号,姓名,年级,年度,总课时 from 授导学生表 where 工号='" + Session["Tgonghao"] + "'";
        GridView5.DataSource = mDB.getDataTable(sql4);
        GridView5.DataBind();
        string sql5 = "select 学号,姓名,项目名称,年度,总课时 from 项目实践表 where 工号='" + Session["Tgonghao"] + "'";
        GridView6.DataSource = mDB.getDataTable(sql5);
        GridView6.DataBind();
        string sql6 = "select [讲座时长],[讲座名称],[课时] ,[总课时],[年度] from 素质文化讲座表 where 工号='" + Session["Tgonghao"] + "'";
        GridView7.DataSource = mDB.getDataTable(sql6);
        GridView7.DataBind();
        string sql7 = "select [教师姓名],[青年教师工号],[青年教师姓名],[年度],[总课时] from 青年教师指导表 where 工号='" + Session["Tgonghao"] + "'";
        GridView8.DataSource = mDB.getDataTable(sql7);
        GridView8.DataBind();
        mDB.Close();
     
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        //base.VerifyRenderingInServerForm(control);
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = Session["Tgonghao"].ToString();
        Response.Clear();
        Response.Buffer = true;
        string name = "attachment;filename=" + HttpUtility.UrlEncode(a, System.Text.Encoding.UTF8) + ".xls";
        Response.AddHeader("content-disposition", name);
        Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
        Response.Charset = "gb2312";
        Response.ContentType = "application/ms-excel";
        System.IO.StringWriter tw = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter hw = new HtmlTextWriter(tw);
        divEx.RenderControl(hw);
       // GridView2.RenderControl(hw);
      //  Response.Write(tw.ToString());
        Response.Output.Write(tw.ToString());
        Response.Flush();
     
     
        
        Response.End();
    }
}