﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

/// <summary>
/// DBHelper 的摘要说明
/// </summary>
public class Database : IDisposable
{
    protected SqlConnection Connection;//数据库连接
    protected string ConnectionString;//数据库连接串
    
    //构造函数，初始化数据库连接参数，数据库连接参数从 app.config 文件中自动读取
    public Database()
    {
        ConnectionString = ConfigurationManager.ConnectionStrings["Teacher"].ConnectionString;
    }
    public Database(string DBRole)
    {
        if(DBRole== "Teacher")
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["Teacher"].ConnectionString;
        }     
    }

    //打开数据库连接
    protected void Open()
    {
        if(Connection==null)
        {
            Connection = new SqlConnection(ConnectionString);
        }
        if(Connection.State.Equals(ConnectionState.Closed))
        {
            Connection.Open();
        }
    }

    //关闭数据库连接
    public void Close()
    {
        if(Connection!=null)
        {
            Connection.Close();
        }
    }

    //获取数据，返回一个SqlDataReader （调用后主意调用SqlDataReader.Close()）
    public SqlDataReader GetDataReader(string sqlString)
    {
        Open();
        SqlCommand cmd = new SqlCommand(sqlString, Connection);
        return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
    }

    //获取数据，返回一个DataSet
    public DataSet GetDataSet(string sqlString,string sqlObj)
    {
        Open();
        SqlDataAdapter adapter = new SqlDataAdapter(sqlString, Connection);
        DataSet dataset = new DataSet();
        adapter.Fill(dataset, sqlObj);
        Close();
        return dataset;
    }
    public DataSet GetDataSet(string sqlString)
    {
        Open();
        SqlDataAdapter adapter = new SqlDataAdapter(sqlString, Connection);
        DataSet dataset = new DataSet();
        adapter.Fill(dataset, "table");
        Close();
        return dataset;
    }
    public DataTable getDataTable(string sqlString)
    {
        return GetDataSet(sqlString).Tables[0];
    }
    public DataRow GetDataRow(string sqlString, string sqlObj)
    {
        DataSet dataset = GetDataSet(sqlString, sqlObj);
        dataset.CaseSensitive = false;
        if(dataset.Tables[0].Rows.Count>0)
        {
            return dataset.Tables[0].Rows[0];
        }
        else
        {
            return null;
        }
    }

    //执行Sql语句
    // <returns>对Update、Insert、Delete为影响到的行数，其他情况为-1</returns>
    public int ExecuteSQL(string sqlString)
    {
        int count = -1;
        Open();
        try
        {
            SqlCommand cmd = new SqlCommand(sqlString, Connection);
            count = cmd.ExecuteNonQuery();
        }
        catch
        {
            count = -1;
        }
        finally
        {
            Close();
        }
        return count;
    }
    public int ExecuteSQL(string sqlString,SqlParameter prm)
    {
        int count = -1;
        Open();
        try
        {
            SqlCommand cmd = new SqlCommand(sqlString, Connection);
            cmd.Parameters.Add(prm);
            Open();
            count = cmd.ExecuteNonQuery();
        }
        catch(SqlException e)
        {
            count = -1;
            Console.WriteLine(e.Message.ToString());
        }
        finally
        {
            Close();
        }
        return count;
    }

    //以事务的方式执行一组Sql语句
    public bool ExecuteSQL(ArrayList sqlStrings)
    {
        bool success = true;
        Open();
        SqlCommand cmd = new SqlCommand();
        SqlTransaction trans = Connection.BeginTransaction();
        cmd.Connection = Connection;
        cmd.Transaction = trans;
        try
        {
            foreach(string str in sqlStrings)
            {
                cmd.CommandText = str;
                cmd.ExecuteNonQuery();          
            }
            success = true;
            trans.Commit();
        }
        catch
        {
            success = false;
            trans.Rollback();
        }
        finally
        {
            Close();
        }
        return success;
    }

    //数据表中插入一条记录
    public bool Insert(string TableName,Hashtable Cols)
    {
        int Count = 0;
        if(Cols.Count<=0)
        {
            return true;
        }
        string Fields = "(";
        string Values = "Values(";
        foreach(DictionaryEntry item in Cols)
        {
            if(Count != 0)
            {
                Fields += ",";
                Values += ",";
            }
            Fields += item.Key.ToString();
            Values += item.Value.ToString();
            Count++;
        }
        Fields += ")";
        Values += ")";
        string sqlString = "Insert into" + TableName + Fields + Values;
        return Convert.ToBoolean(ExecuteSQL(sqlString));
    }
    //更新一个数据表
    public bool Update(string TableName,Hashtable Cols,string Where)
    {
        int Count = 0;
        if(Cols.Count<=0)
        {
            return true;
        }
        string Fields = "";
        foreach(DictionaryEntry item in Cols)
        {
            if(Count!=0)
            {
                Fields += ",";
            }
            Fields += item.Key.ToString();
            Fields += "=";
            Fields += item.Value.ToString();
            Count++;
        }
        Fields += "";
        string sqlString = "Update" + TableName + "Set" + Fields + Where;
        return Convert.ToBoolean(ExecuteSQL(sqlString));
    }

    //返回DataView对象
    public DataView getDataView(string SelectString)
    {
        DataSet mDataset = new DataSet();
        DataView dataViewTerms = new DataView();
        SqlDataAdapter mDataAdapter = new SqlDataAdapter();
        mDataset = GetDataSet(SelectString);
        dataViewTerms = new DataView(mDataset.Tables["table"]);
        return dataViewTerms;
    }

    //释放资源
    public void Dispose()
    {
        //确保连接被关闭
        if(Connection!=null)
        {
            Connection.Dispose();
            Connection = null;
        }
    }

    //析构函数，释放非托管资源
    ~Database()
    {
        try
        {
            if(Connection!=null)
            {
                Connection.Close();
            }
        }
        catch { }
        try
        {
            Dispose();
        }
        catch { }
    }
} 