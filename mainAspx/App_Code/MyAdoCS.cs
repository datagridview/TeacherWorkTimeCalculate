using Microsoft.CSharp;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Configuration;
using System.Data.SqlClient;

public class MyADOCS
{

    protected static string Con = ConfigurationManager.ConnectionStrings["Teacher"].ConnectionString;
    protected SqlDataAdapter adapter = new SqlDataAdapter();
    protected SqlDataReader reader;
    protected SqlConnection Myconn = new SqlConnection(Con);
    int i;
    int Count;
    int Item;



    public bool ExecuteNonQuery(string SQLStr)
    {

        Myconn.Open();
        try
        {
            SqlCommand cmd = new SqlCommand(SQLStr, Myconn);

            cmd.ExecuteNonQuery();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
        Myconn.Close();
    }

    public bool ExecuteNonQueryPro(string SQLStr, ref SqlParameter[] myParam)
    {

        Myconn.Open();
        try
        {
            SqlCommand cmd = new SqlCommand(SQLStr, Myconn);


            cmd.CommandType = CommandType.StoredProcedure;

            if ((myParam == null) == false)
            {
                for (i = 0; i <= myParam.Length - 1; i++)
                {
                    cmd.Parameters.Add(myParam[i]);
                }
            }

            cmd.ExecuteNonQuery();

            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
        Myconn.Close();
    }


    public DataTable GetTable(string Selectstr)
    {
        Myconn.Open();
        DataTable tb = new DataTable();

        try
        {
            SqlCommand cmd = new SqlCommand(Selectstr, Myconn);

            reader = cmd.ExecuteReader();
            tb = ReaderToTable(reader);

            return tb;
        }
        catch (Exception ex)
        {
            return tb;
        }
        Myconn.Close();
    }

    //使用存储过程的调用
    public DataTable GetTablePRO(string PROStr, ref SqlParameter[] myParam)
    {
        Myconn.Open();
        DataTable tb = new DataTable();

        try
        {
            SqlCommand cmd = new SqlCommand(PROStr, Myconn);


            cmd.CommandType = CommandType.StoredProcedure;


            if ((myParam == null) == false)
            {
                for (i = 0; i <= myParam.Length - 1; i++)
                {
                    cmd.Parameters.Add(myParam[i]);
                }
            }


            reader = cmd.ExecuteReader();
            tb = ReaderToTable(reader);
            //生成Table
            return tb;
        }
        catch (Exception ex)
        {
            return tb;
        }

        Myconn.Close();
    }

    public DataTable GetTablePROn(string PROStr)
    {
        Myconn.Open();
        DataTable tb = new DataTable();

        try
        {
            SqlCommand cmd = new SqlCommand(PROStr, Myconn);
            //OleDbCommand(Selectstr, Myconn)
            cmd.CommandType = CommandType.StoredProcedure;
            reader = cmd.ExecuteReader();
            tb = ReaderToTable(reader);
            //生成Table
            return tb;
        }
        catch (Exception ex)
        {
            return tb;
        }
       Myconn.Close();
    }

    private DataTable ReaderToTable(SqlDataReader reader)
    {
        DataTable newTable = new DataTable();
        DataColumn col = null;
        DataRow row = null;
        int i = 0;
        for (i = 0; i <= reader.FieldCount - 1; i++)
        {
            col = new DataColumn();
            col.ColumnName = reader.GetName(i);
            col.DataType = reader.GetFieldType(i);

            newTable.Columns.Add(col);
        }
        while (reader.Read())
        {
            row = newTable.NewRow();
            for (i = 0; i <= reader.FieldCount - 1; i++)
            {
                row[i] = reader[i];
            }
            newTable.Rows.Add(row);
        }
        return newTable;
    }
    public void UpdateDataWithProc(string SQLStr, ref SqlParameter[] myParam)
    {
        string Con = ConfigurationManager.ConnectionStrings["itNews"].ConnectionString;
        SqlConnection Myconn = new SqlConnection(Con);
        Myconn.Open();

        SqlCommand cmd = new SqlCommand(SQLStr, Myconn);
        cmd.CommandType = CommandType.StoredProcedure;//表明Cmd对象要执行的命令是存储过程（存储过程名）

        int i;
        if ((myParam == null) == false)
        {
            for (i = 0; i <= myParam.Length - 1; i++)
            {
                cmd.Parameters.Add(myParam[i]);
            }
        }
        cmd.ExecuteNonQuery();
        Myconn.Close();
    }
}
