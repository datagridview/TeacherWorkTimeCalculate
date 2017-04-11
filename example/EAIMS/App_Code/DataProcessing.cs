using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Collections;

/// <summary>
/// DataProcessing 的摘要说明
/// </summary>
public class DataProcessing
{
    public void DPExcel(List<string> strExcel)
    {
        Database mDB = new Database();
        Hashtable MyHashTable = new Hashtable();
        //解析季节和年份
        string str1 = strExcel[0].ToString();
        MyHashTable.Add(0, strExcel[0].ToString());
        
    }
    private string YearAndSeason(string YAndS)
    {
        int i1 = YAndS.IndexOf("(");
        int i2 = YAndS.IndexOf(")");
        string strY = YAndS.Substring(0, i1);
        string strS = YAndS.Substring(i1, i2);

        return "0";
    }

}