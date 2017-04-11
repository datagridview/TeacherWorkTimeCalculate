using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.IO;

public partial class YanZhengma : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string checkCode = CheckCode();
        Session["CheckCode"] = checkCode;
        CodeImage(checkCode);
    }
    private string CheckCode()//产生四个随机的数字或者字母
    {
        int number;
        char code;
        string checkCode = string.Empty;
        //产生随机数
        Random ran = new Random();
        for (int i = 0; i < 4; i++)
        {
            number = ran.Next();            
            if (number % 2 == 0)
            {
                code = (char)('0' + (char)(number % 10));
            }
            else
            {
                code = (char)('A' + (char)(number % 26));
            }
            checkCode += "" + code.ToString();
        }
        return checkCode;
    }
    private void CodeImage(string checkCode)//建立一个随机图形
    {
        if (checkCode == null || checkCode.Trim() == string.Empty)
        {
            return;
        }
        //建立一个位图文件
        System.Drawing.Bitmap image = new System.Drawing.Bitmap(100, 30);
        Graphics g = Graphics.FromImage(image);
        Random random = new Random();
        g.Clear(Color.White);
        for (int i = 0; i < 3; i++)
        {
            int x1 = random.Next(image.Width);
            int x2 = random.Next(image.Width);
            int y1 = random.Next(image.Height);
            int y2 = random.Next(image.Height);
            g.DrawLine(new Pen(Color.Black), x1, y1, x2, y2);
        }
        //把产生的随机数以字体的形式写入画面
        Font font = new System.Drawing.Font("Arial", 18, (System.Drawing.FontStyle.Bold)); //font为设定字体格式
        g.DrawString(checkCode, font, new SolidBrush(Color.Red), 2, 2);
        for (int i = 0; i < 150; i++)//画图片前的噪音点
        {
            int x = random.Next(image.Width);
            int y = random.Next(image.Height);
            image.SetPixel(x, y, Color.FromArgb(random.Next()));
        }
        //画图片的边框线
        g.DrawRectangle(new Pen(Color.Silver), 0, 0, 100, 30);      
        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
        Response.ClearContent();
        Response.ContentType = "image/jpeg";
        Response.BinaryWrite(ms.ToArray());
        g.Dispose();
        image.Dispose();//释放资源
    }
}