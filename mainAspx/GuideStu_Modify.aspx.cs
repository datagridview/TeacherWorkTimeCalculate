﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin2_2_1_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["TeacherID4"].ToString() + ":" + Session["TeacherName4"].ToString();
        Label6.Text = "当前修改" + ":" + Session["TeacherID4"].ToString() + Session["TeacherName4"].ToString();
        Database mDB = new Database();
        string sql = "select [学号],[姓名],[年级],[年度],[总课时] from [授导学生表] where [工号]='" + Session["TeacherID4"].ToString() + "'";
        //获取选择的指导学生的信息
        GridView1.DataSource = mDB.getDataTable(sql);
        GridView1.DataBind();
        mDB.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("GuideStu.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length != 0)
        {
            string a = "未通过";
            Database mDB = new Database();
            string sql = "update [授导学生表] set[状态]='" + a + "' where[工号]='" + Session["TeacherID4"].ToString() + "'and [学号]='" + TextBox1.Text + "'";
            //更新未通过的信息
            mDB.ExecuteSQL(sql);
            mDB.Close();
        }
        else
        {
            Response.Write("<script>alert('您没有进行选择！！！');</script>");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString();
        TextBox2.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[2].Text.ToString();
        TextBox3.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text.ToString();
        TextBox4.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text.ToString();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length != 0)
        {
            string a = "已审核";
            Database mDB = new Database();
            string sql = "update [授导学生表] set[学号]='" + TextBox1.Text + "',[姓名]='" + TextBox2.Text + "'";
            sql += ",[总课时]='" + TextBox3.Text + "',[年度]='" + TextBox4.Text + "',[状态]='" + a + "'";
            sql += "where[工号]='" + Session["TeacherID4"].ToString() + "'and [学号]='" + TextBox1.Text + "'";
            //审核成功就更新学生信息
            if (mDB.ExecuteSQL(sql)>0)
            {
                Response.Write("<script>alert('修改成功并且通过审核！！！');</script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败！！！');</script>");
            }
            mDB.Close();
        }
        else
        {
            Response.Write("<script>alert('您没有进行选择！！！');</script>");
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length != 0)
        {
            Database mDB = new Database();
            string sql = "delete  from [授导学生表] ";
            //删除学生信息
            sql += "where [工号]='" + Session["TeacherID4"].ToString() + "'and [学号]='" + TextBox1.Text + "'";
            if (mDB.ExecuteSQL(sql)>0)
            {
                Response.Write("<script>alert('删除成功！！！');</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败！！！');</script>");
            }
            mDB.Close();
        }
        else
        {
            Response.Write("<script>alert('您没有进行选择！！！');</script>");
        }
    }
}