using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;
using System.Collections;
using System.Diagnostics;
public class Database : IDisposable
{
    /// <summary>
    /// 保护变量，数据库连接。
    /// </summary>
    protected SqlConnection Connection;
    /// <summary>
    /// 保护变量，数据库连接串。
    /// </summary>
    protected string ConnectionString;
    /// <summary>
    /// 构造函数，初始化数据库连接参数，数据库连接参数从 app.config 文件中自动读取
    /// </summary>
    public Database()
    {
        ConnectionString = ConfigurationManager.ConnectionStrings["Teacher"].ConnectionString;
    }
    /// <summary>
    /// 构造函数，初始化数据库连接参数
    /// </summary>
    public Database(string serverIP, string dbName, string userID, string userPwd)
    {
        ConnectionString = "server=" + serverIP + "; database=" + dbName + "; uid=" + userID + "; pwd=" + userPwd;
    }
    public Database(string dbRole)
    {
        if (dbRole == "Teacher")
            ConnectionString = ConfigurationManager.ConnectionStrings["Teacher"].ConnectionString;
    }
    /// <summary>
    /// 保护方法，打开数据库连接。
    /// </summary>
    protected void Open()
    {
        if (Connection == null)
        {
            Connection = new SqlConnection(ConnectionString);
        }
        if (Connection.State.Equals(ConnectionState.Closed))
        {
            Connection.Open();
        }
    }
    // 公有方法，关闭数据库连接。
    public void Close()
    {
        if (Connection != null)
            Connection.Close();
    }
    /// 公有方法，获取数据，返回一个SqlDataReader （调用后主意调用SqlDataReader.Close()）。
    /// </summary>
    /// <param name="sqlString">Sql语句</param>
    /// <returns>SqlDataReader</returns>
    public SqlDataReader GetDataReader(string sqlString)
    {
        Open();
        SqlCommand cmd = new SqlCommand(sqlString, Connection);
        return cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
    }
    /// <summary>
    /// 公有方法，获取数据，返回一个DataSet。
    /// </summary>
    /// <param name="sqlString">Sql语句</param>
    /// <returns>DataSet</returns>
    public DataSet GetDataSet(string sqlString, string sqlObj)
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
    /// <summary>
    /// 公有方法，获取数据，返回一个DataRow。
    /// </summary>
    /// <param name="sqlString">Sql语句</param>
    /// <returns>DataRow</returns>
    public DataRow GetDataRow(string sqlString, string sqlObj)
    {
        DataSet dataset = GetDataSet(sqlString, sqlObj);
        dataset.CaseSensitive = false;
        if (dataset.Tables[0].Rows.Count > 0)
        {
            return dataset.Tables[0].Rows[0];
        }
        else
        {
            return null;
        }
    }
    /// <summary>
    /// 公有方法，执行Sql语句。
    /// </summary>
    /// <param name="sqlString">Sql语句</param>
    /// <returns>对Update、Insert、Delete为影响到的行数，其他情况为-1</returns>
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
    public int ExecuteSQL(string sqlString, SqlParameter prm)
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
        catch (SqlException e)
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
    /// <summary>
    /// 以事务的方式执行一组Sql语句
    /// </summary>
    /// <param name="SqlStrings">Sql语句组</param>
    /// <returns>是否成功</returns>
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
            foreach (string str in sqlStrings)
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
    /// <summary>
    /// 公有方法，在一个数据表中插入一条记录。
    /// </summary>
    /// <param name="TableName">表名</param>
    /// <param name="Cols">哈西表，键值为字段名，值为字段值</param>
    /// <returns>是否成功</returns>
    public bool Insert(string TableName, Hashtable Cols)
    {
        int Count = 0;

        if (Cols.Count <= 0)
        {
            return true;
        }

        string Fields = " (";
        string Values = " Values(";
        foreach (DictionaryEntry item in Cols)
        {
            if (Count != 0)
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

        string sqlString = "Insert into " + TableName + Fields + Values;
        //只是测试用，最后删掉
        Console.WriteLine(sqlString);
        return Convert.ToBoolean(ExecuteSQL(sqlString));
    }
    /// <summary>
    /// 公有方法，更新一个数据表。
    /// </summary>
    /// <param name="TableName">表名</param>
    /// <param name="Cols">哈西表，键值为字段名，值为字段值</param>
    /// <param name="Where">Where子句</param>
    /// <returns>是否成功</returns>
    public bool Update(string TableName, Hashtable Cols, string Where)
    {
        int Count = 0;
        if (Cols.Count <= 0)
        {
            return true;
        }
        string Fields = " ";
        foreach (DictionaryEntry item in Cols)
        {
            if (Count != 0)
            {
                Fields += ",";
            }
            Fields += item.Key.ToString();
            Fields += "=";
            Fields += item.Value.ToString();
            Count++;
        }
        Fields += " ";

        string sqlString = "Update " + TableName + " Set " + Fields + Where;
        return Convert.ToBoolean(ExecuteSQL(sqlString));
    }
    /// <summary>
    /// 返回 DataView 对象
    /// </summary>
    /// <param name="SelectString"></param>
    /// <returns></returns>
    public DataView getDataView(string SelectString)
    {
        System.Data.DataSet mDataSet = new DataSet();
        System.Data.DataView dataViewTerms = new DataView();
        System.Data.SqlClient.SqlDataAdapter mDataAdapter = new SqlDataAdapter();
        mDataSet = GetDataSet(SelectString);
        dataViewTerms = new DataView(mDataSet.Tables["table"]);
        return dataViewTerms;
    }
    /// <summary>
    /// 公有方法，释放资源。
    /// </summary>
    public void Dispose()
    {
        // 确保连接被关闭
        if (Connection != null)
        {
            Connection.Dispose();
            Connection = null;
        }
    }
    /// <summary>
    /// 析构函数，释放非托管资源
    /// </summary>
    ~Database()
    {
        try
        {
            if (Connection != null)
                Connection.Close();
        }
        catch { }
        try
        {
            Dispose();
        }
        catch { }
    }
}

