using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data.OleDb;
	
	/// <summary>
	/// DbManager 的摘要说明
	/// </summary>
	public class DbManager
	{
	    public DbManager()
	    {
	        //
	        // TODO: 在此处添加构造函数逻辑
	        //
	    }
	    /// <summary>
	    /// 实现对ACCESS 数据库的查询
	    /// </summary>
	    /// <param name="strSQL">查询语句</param>
	    /// <returns>返回Dataset</returns>
	    public static DataTable ExecuteQuery(string strSQL)
	    {
	        string ConnectionString = ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString;
	        SqlConnection conn = new SqlConnection(ConnectionString);
	        try                                                         //在此使用了异常语句，try表示尝试执行下面的语句
	        {
	            SqlDataAdapter adapter = new SqlDataAdapter(strSQL,conn);
	            DataSet ds = new DataSet();
	            adapter.Fill(ds);
	            return ds.Tables[0];
	        }
	       
	        finally                                                     //不管上面的try语句执行成功与否，最终都执行下面的语句                  
	        {
	            if (conn.State == ConnectionState.Open)
	            {
	                conn.Close();
	            }
	
	        }
	    }
	    /// <summary>
	    /// 执行对Access数据库的插入、删除和修改操作
	    /// </summary>
	    /// <param name="strSQL">插入、删除或修改的SQL语句</param>
	    /// <returns>返回插入、删除或修改的SQL语句所影响的行数</returns>
	    public static int  ExecuteNonQuery(string strSQL)
	    {
	        string ConnectionString = ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString;
            SqlConnection conn = new SqlConnection(ConnectionString);
	        conn.Open();
	        try
	        {
	            SqlCommand cmd = new SqlCommand(strSQL,conn);
	            return 
                    (cmd.ExecuteNonQuery());}
	            
	        finally
	        {
                if (conn.State == ConnectionState.Open)
                    conn.Close();}
	    }
	        /// <summary>
	        /// 使用ExecuteScalar方法从数据库中检索单个值，用于聚合。如统计行数、求平均值等
	        /// </summary>
	        /// <param name="strSQL"></param>
	        /// <returns></returns>
	    public static object ExecuteScalar(string strSQL)
	    {
	        string ConnectionString = ConfigurationManager.ConnectionStrings["sqlConn"].ConnectionString;
	        SqlConnection conn = new SqlConnection(ConnectionString);
	        conn.Open();
	        try
	        {
	            SqlCommand cmd = new SqlCommand(strSQL, conn);
	            cmd = conn.CreateCommand();
	            cmd.CommandType = CommandType.Text;
	            cmd.CommandText = strSQL;

                return cmd.ExecuteScalar();
	        }
	            
	        finally
	        {
	            if (conn.State == ConnectionState.Open)
	                conn.Close();
	        }
	    }
	}