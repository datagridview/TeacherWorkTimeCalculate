using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user6 : System.Web.UI.Page
{
    public string a = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        a = Session["TeacherID"].ToString();
        Label6.Text = a;
        if(TextBox1.Text.Length==0)
        {          
            Database mDB = new Database();
            string sql = "select * from [职工表] where [工号]='" + a + "'";
            SqlDataReader mReader = mDB.GetDataReader(sql);
            if (mReader.Read())
            {
                TextBox1.Text = mReader["职称"].ToString();
                TextBox2.Text = mReader["院系"].ToString();
                TextBox3.Text = mReader["联系方式"].ToString();
                TextBox4.Text = mReader["邮箱"].ToString();
                TextBox6.Text = mReader["出生年月"].ToString();
                TextBox5.Text = mReader["简介"].ToString();
                Label3.Text = mReader["姓名"].ToString();
                Image1.ImageUrl = mReader["照片"].ToString();
            }
            mReader.Close();
            mDB.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sex = "";
        if(RadioButton1.Checked==true)
        {
            sex = "男";
        }
        if (RadioButton2.Checked == true)
        {
            sex = "女";
        }
        Database mDB = new Database();
        string sql = "update [职工表] set [职称]='" + TextBox1.Text + "',[院系]='" + TextBox2.Text + "'";
        sql += ",[联系方式]='" + TextBox3.Text + "',[邮箱]='" + TextBox4.Text + "',[出生年月]='" + TextBox6.Text + "'";
        sql += ",[简介]='" + TextBox5.Text + "',[性别]='" + sex + "' where [工号]='" + a + "'";
        if(mDB.ExecuteSQL(sql)>0)
        {
            Response.Write("<script>alert('操作成功！！！');</script>");
        }
        else
        {
            Response.Write("<script>alert('操作失败！！！');</script>");
        }
        mDB.Close();
    }

    protected void Button3_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFiles)
        {
            string fileType = FileUpload1.PostedFile.ContentType;
            if (fileType == "image/bmp" || fileType == "image/gif" || fileType == "image/jpeg")
            {
                string path = Server.MapPath("/") + "images/" + FileUpload1.FileName.ToString();
                FileUpload1.SaveAs(path);
                string path2 = "~/images/" + FileUpload1.FileName;
                Image1.ImageUrl = path2;
                Database mDB = new Database();
                string sql = "update 职工表 set 照片='" + path2 + "'where [工号]='" + a + "'";
                if (mDB.ExecuteSQL(sql) > 0)
                {
                    Response.Write("<script>alert('照片上传成功！！！');</script>");
                }
                else
                {
                    Response.Write("<script>alert('照片上传失败！！！');</script>");
                }
                mDB.Close();
            }
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Database mDB = new Database();
        string sql = "select 照片 from [职工表] where [工号]='" + a + "'";
        SqlDataReader mReader = mDB.GetDataReader(sql);
        if (mReader.Read())
        {
            if (mReader["照片"].ToString().Length == 0)
            {
                Response.Write("<script>alert('您还没有上传照片，无法修改！！！');</script>");
                mReader.Close();
            }
            else
            {
                mReader.Close();
                if (FileUpload1.HasFiles)
                {
                    string fileType = FileUpload1.PostedFile.ContentType;
                    if (fileType == "image/bmp" || fileType == "image/gif" || fileType == "image/jpeg")
                    {
                        string path = Server.MapPath("/") + "images/" + FileUpload1.FileName.ToString();
                        FileUpload1.SaveAs(path);
                        string path2 = "~/images/" + FileUpload1.FileName;
                        string sql1 = "update 职工表 set 照片='" + path2 + "' where [工号]='" + a + "'";
                        if (mDB.ExecuteSQL(sql1) > 0)
                        {
                            Image1.ImageUrl = path2;
                            Response.Write("<script>alert('照片修改成功！！！');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('照片修改失败！！！');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('照片格式不正确！！！');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('所选文件为空！！！');</script>");
                }
            }
        }
        mDB.Close();
    }
}