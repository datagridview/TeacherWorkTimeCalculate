using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFiles)
        {
            DataTable myDataTable = new DataTable();
            DataSet myDataset = new DataSet();
            string fileName = FileUpload1.FileName;
            string servePath = Server.MapPath(("~/") + fileName);
            FileUpload1.SaveAs(servePath);
            string strConn = "Provider=Microsoft.Ace.OleDb.12.0;" +
             "Data Source=" + servePath + ";" +
             "Extended Properties='Excel 12.0; HDR=Yes; IMEX=1'";
            OleDbConnection con = new OleDbConnection(strConn);
            OleDbDataAdapter da = new OleDbDataAdapter("SELECT *  FROM [Sheet1$]", con);
            da.Fill(myDataset);
            myDataTable = myDataset.Tables[0];

            if(myDataTable.Rows.Count==24)//春季表格
            {
                List<string> strSpring = new List<string>();
                strSpring.Add(myDataTable.Rows[0][0].ToString());//判断季节
                strSpring.Add(myDataTable.Rows[1][1].ToString());//姓名
                strSpring.Add(myDataTable.Rows[1][3].ToString());//填表时间

                //课程名称、专业、年级、学生人数、周理论节数、周实验节数、周课时、总课时、备注
                for (int i = 2; i < 7; i++)
                {
                    for (int j = 1; j < 11; j++)
                    {
                        strSpring.Add(myDataTable.Rows[i][j].ToString());
                        //if (myDataTable.Rows[i][j].ToString() != "")//
                        //{
                        //    strSpring.Add(myDataTable.Rows[i][j].ToString());
                        //}
                    }
                }
                strSpring.Add(myDataTable.Rows[8][1].ToString());//指导本科生毕业论文姓名
                //本科生授导学生名单
                for (int i = 10; i < 14; i++)
                {
                    for (int j = 1; j < 3; j++)
                    {
                        strSpring.Add(myDataTable.Rows[i][j].ToString());
                    }
                }
                //实习或实践学生名单总人数
                for (int i = 14; i < 17; i++)
                {
                    strSpring.Add(myDataTable.Rows[i][1].ToString());
                }
                strSpring.Add(myDataTable.Rows[18][1].ToString());//大学生结创项目
                strSpring.Add(myDataTable.Rows[19][2].ToString());//是否参加期中教学检查教师座谈会
                strSpring.Add(myDataTable.Rows[20][2].ToString());//期中教学检查听课教师姓名
                strSpring.Add(myDataTable.Rows[21][2].ToString());//文化素质讲座题目
                strSpring.Add(myDataTable.Rows[22][2].ToString());//青年教师指导
                strSpring.Add(myDataTable.Rows[23][0].ToString());//提示

                DataProcessing DP = new DataProcessing();
                DP.DPExcel(strSpring);
            }
            else//秋季
            {
                List<string> strAutumn = new List<string>();
                strAutumn.Add(myDataTable.Rows[0][0].ToString());//判断季节
                strAutumn.Add(myDataTable.Rows[1][1].ToString());//姓名
                strAutumn.Add(myDataTable.Rows[1][3].ToString());//填表时间

                //课程名称、专业、年级、学生人数、周理论节数、周实验节数、周课时、总课时、备注
                for (int i = 2; i < 7; i++)
                {
                    for (int j = 1; j < 11; j++)
                    {
                        strAutumn.Add(myDataTable.Rows[i][j].ToString());
                    }
                }
                //本科生授导学生名单
                for (int i = 8; i < 12; i++)
                {
                    for (int j = 1; j < 3; j++)
                    {
                        strAutumn.Add(myDataTable.Rows[i][j].ToString());
                    }
                }
                //实习或实践学生名单总人数
                for (int i = 12; i < 15; i++)
                {
                    if (myDataTable.Rows[i][1].ToString() != "")
                    {
                        strAutumn.Add(myDataTable.Rows[i][1].ToString());
                    }
                }
                strAutumn.Add(myDataTable.Rows[15][2].ToString());//是否参加期中教学检查教师座谈会
                strAutumn.Add(myDataTable.Rows[16][2].ToString());//期中教学检查听课教师姓名
                strAutumn.Add(myDataTable.Rows[17][2].ToString());//文化素质讲座题目
                strAutumn.Add(myDataTable.Rows[18][2].ToString());//青年教师指导

                strAutumn.Add(myDataTable.Rows[20][0].ToString());//提示

                DataProcessing DP = new DataProcessing();
                DP.DPExcel(strAutumn);
            }

            myDataset.Dispose();
            myDataTable.Dispose();
        }
    }
}