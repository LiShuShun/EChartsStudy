using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

namespace EChart
{
    /// <summary>
    /// ListTable2 的摘要说明
    /// </summary>
    public class ListTable2 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string str = @"Data Source=PC-20201014BKEO\SQLEXPRESS;Initial Catalog=MySchool;Integrated Security=True";
            string data = context.Request["data"];
            SqlConnection conn = new SqlConnection(str);
            string sql = string.Format(@"select  top 8 StudentResult,b.StudentNo,StudentName,Sex  from dbo.Result r
  inner join dbo.Student b on b.StudentNo=r.StudentNo where b.StudentNo='{0}' or StudentName like'%{1}%'", data, data);
            List<MapInfo> list = new List<MapInfo>();
            SqlCommand comd = new SqlCommand(sql, conn);
            try
            {
                conn.Open();
                SqlDataReader read = comd.ExecuteReader();
                while (read.Read())
                {
                    MapInfo info = new MapInfo(read["StudentNo"].ToString(), read["StudentName"].ToString(), read["Sex"].ToString(), Convert.ToInt32(read["StudentResult"]));
                    list.Add(info);
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally { conn.Close(); }
            JavaScriptSerializer js = new JavaScriptSerializer();
            string json = js.Serialize(list);
            context.Response.Write(json);
        }



        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}