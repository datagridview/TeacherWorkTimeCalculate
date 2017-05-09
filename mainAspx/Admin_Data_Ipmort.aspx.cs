using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

public partial class admin4 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = DropDownList1.SelectedItem.Text;
        DataTable dt = new DataTable();
        if(FileUpload1.HasFiles)
        {
            Label3.Text = DropDownList1.SelectedItem.Text;
            string fileName = FileUpload1.FileName;
            string savePath = Server.MapPath(("~/") + fileName);//获得路径
            FileUpload1.SaveAs(savePath);
            string strConn = "Provider=Microsoft.Ace.OleDb.12.0;" +
             "Data Source=" + savePath + ";" +
             "Extended Properties='Excel 12.0; HDR=Yes; IMEX=1'";
            OleDbConnection con = new OleDbConnection(strConn);
            OleDbDataAdapter da = new OleDbDataAdapter("SELECT *  FROM [Sheet1$]", con);   
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            //上传文件
            Database mdb = new Database();
            if (GridView1.Rows.Count > 0)
            {
                DataRow dr = null;
                for (int i = 1; i < dt.Rows.Count; i++)
                {
                    dr = dt.Rows[i];
                    string couresrNum = dr[0].ToString();
                    string courserName = dr[1].ToString();
                    string courserScore = dr[2].ToString();
                    string courserTime = dr[3].ToString();
                    string sql = "insert into [TeacherWork2].[dbo].["+a+"]([课程号],[课程名称],[学分]";
                    sql += ",[总课时]) values('" + couresrNum + "','" + courserName + "'";
                    sql += ",'" + courserScore + "','" + courserTime + "')";
                    mdb.ExecuteSQL(sql); 
                    //return的值状态
                }
                mdb.Close();
                Response.Write("<script>alert('文件上传成功！！！');</script>");
            }
            else
            {
                Response.Write("<script>alert('文件上传失败！！！');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('您没有选择文件，请选择文件！！！');</script>");
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}