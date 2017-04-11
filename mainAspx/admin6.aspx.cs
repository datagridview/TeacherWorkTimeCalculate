using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;

public partial class admin6_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = DropDownList1.SelectedItem.Text;
        string b = DropDownList1.SelectedItem.Text;
        DataTable dt = new DataTable();
        if (FileUpload1.HasFiles)
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
                if(a=="青年教师指导表")
                {
                    DataRow dr = null;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        dr = dt.Rows[i];
                        string t1 = dr[0].ToString();
                        string t2 = dr[1].ToString();
                        string t3 = dr[2].ToString();
                        string t4 = dr[3].ToString();
                        string t5 = dr[4].ToString();
                        string t6 = dr[5].ToString();
                        string t7 = dr[6].ToString();
                        string t8 = dr[7].ToString();
                        string sql = "insert into [TeacherWork2].[dbo].[" + a + "]([工号],[教师姓名],[青年教师工号]";
                        sql += ",[青年教师姓名],[年度],[提交时间],[总课时],[状态])";
                        sql += "values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "'";
                        sql += ",'"+t5+"','"+t6+"','"+t7+"','"+t8+"')";
                        mdb.ExecuteSQL(sql);
                        string sql2 = "insert into[TeacherWork2].[dbo].[成分类别表]([成分名],[类别])values('" + a + "','" + b + "')";
                        mdb.ExecuteSQL(sql2);
                    }
                } 
                //素质文化讲座表
                if (a == "素质文化讲座表")
                {
                    DataRow dr = null;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        dr = dt.Rows[i];
                        string t1 = dr[0].ToString();
                        string t2 = dr[1].ToString();
                        string t3 = dr[2].ToString();
                        string t4 = dr[3].ToString();
                        string t5 = dr[4].ToString();
                        string t6 = dr[5].ToString();
                        string t7 = dr[6].ToString();
                        string t8 = dr[7].ToString();
                        string sql = "insert into [TeacherWork2].[dbo].[" + a + "]([工号],[讲座时长],[讲座名称],[课时]";
                        sql += ",[总课时],[年度],[提交时间],[状态]）";
                        sql += "values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "'";
                        sql += ",'" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "')";
                        mdb.ExecuteSQL(sql);
                        string sql2 = "insert into[TeacherWork2].[dbo].[成分类别表]([成分名],[类别])values('" + a + "','" + b + "')";
                        mdb.ExecuteSQL(sql2);
                    }
                } 
                //工作量统计表
                if (a == "工作量统计表")
                {
                    DataRow dr = null;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        dr = dt.Rows[i];
                        string t1 = dr[0].ToString();
                        string t2 = dr[1].ToString();
                        string t3 = dr[2].ToString();
                        string t4 = dr[3].ToString();
                        string t5 = dr[4].ToString();
                        string t6 = dr[5].ToString();
                        string t7 = dr[6].ToString();
                        string t8 = dr[7].ToString();
                        string sql = "insert into [TeacherWork2].[dbo].[" + a + "]([工号],[课程成分名称],[课程成分课时],[指导成分名称]";
                        sql += ",[指导成分课时],[服务成分名称],[服务成分课时],[年度]）";
                        sql += "values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "'";
                        sql += ",'" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "')";
                        mdb.ExecuteSQL(sql);
                        string sql2 = "insert into[TeacherWork2].[dbo].[成分类别表]([成分名],[类别])values('" + a + "','" + b + "')";
                        mdb.ExecuteSQL(sql2);
                    }
                } 
                //毕业论文表
                if (a == "工作量统计表")
                {
                    DataRow dr = null;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        dr = dt.Rows[i];
                        string t1 = dr[0].ToString();
                        string t2 = dr[1].ToString();
                        string t3 = dr[2].ToString();
                        string t4 = dr[3].ToString();
                        string t5 = dr[4].ToString();
                        string t6 = dr[5].ToString();
                        string t7 = dr[6].ToString();
                        string t8 = dr[7].ToString();
                        string sql = "insert into [TeacherWork2].[dbo].[" + a + "]([工号],[教师姓名],[学号],[姓名]";
                        sql += ",[年级],[年度],[总课时],[提交时间]）";
                        sql += "values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "'";
                        sql += ",'" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "')";
                        mdb.ExecuteSQL(sql);
                        string sql2 = "insert into[TeacherWork2].[dbo].[成分类别表]([成分名],[类别])values('" + a + "','" + b + "')";
                        mdb.ExecuteSQL(sql2);
                    }
                } 
                //授导学生表
                if (a == "授导学生表")
                {
                    DataRow dr = null;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        dr = dt.Rows[i];
                        string t1 = dr[0].ToString();
                        string t2 = dr[1].ToString();
                        string t3 = dr[2].ToString();
                        string t4 = dr[3].ToString();
                        string t5 = dr[4].ToString();
                        string t6 = dr[5].ToString();
                        string t7 = dr[6].ToString();
                        string t8 = dr[7].ToString();
                        string sql = "insert into [TeacherWork2].[dbo].[" + a + "]([工号],[教师姓名],[学号],[姓名]";
                        sql += ",[年级],[年度],[总课时],[提交时间]）";
                        sql += "values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "'";
                        sql += ",'" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "')";
                        mdb.ExecuteSQL(sql);
                        string sql2 = "insert into[TeacherWork2].[dbo].[成分类别表]([成分名],[类别])values('" + a + "','" + b + "')";
                        mdb.ExecuteSQL(sql2);
                    }
                } 
                //项目实践表
                if (a == "项目实践表")
                {
                    DataRow dr = null;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        dr = dt.Rows[i];
                        string t1 = dr[0].ToString();
                        string t2 = dr[1].ToString();
                        string t3 = dr[2].ToString();
                        string t4 = dr[3].ToString();
                        string t5 = dr[4].ToString();
                        string t6 = dr[5].ToString();
                        string t7 = dr[6].ToString();
                        string t8 = dr[7].ToString();
                        string sql = "insert into [TeacherWork2].[dbo].[" + a + "]([工号],[教师姓名],[学号],[姓名]";
                        sql += ",[项目名称],[年度],[总课时],[提交时间]）";
                        sql += "values('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "'";
                        sql += ",'" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "')";
                        mdb.ExecuteSQL(sql);
                        string sql2 = "insert into[TeacherWork2].[dbo].[成分类别表]([成分名],[类别])values('" + a + "','" + b + "')";
                        mdb.ExecuteSQL(sql2);
                    }
                } 
                mdb.Close();
                Response.Write("<script>alert('操作成功！！！');</script>");
            }
            else
            {
                Response.Write("<script>alert('操作失败！！！');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('您没有选择文件！！！');</script>");
        }
    }
}