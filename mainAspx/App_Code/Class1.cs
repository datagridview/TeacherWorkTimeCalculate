using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;

/// <summary>
/// Class1 的摘要说明
/// </summary>
public class Class1
{
    public string Encrypt(string pwd)
    {
        MD5 md5 = new MD5CryptoServiceProvider();
        byte[] data = System.Text.Encoding.Default.GetBytes(pwd);//字符串转换为字符编码序列
        byte[] md5data = md5.ComputeHash(data);//计算data字节数组的哈希值
        md5.Clear();
        string str="";
        for(int i=0;i<md5data.Length-1;i++)
        {
            str += md5data[i].ToString("x").PadLeft(2, '0');
        }
        return str;
    }
}