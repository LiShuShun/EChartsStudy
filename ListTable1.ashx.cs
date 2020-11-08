using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

namespace EChart
{
    /// <summary>
    /// ListTable1 的摘要说明
    /// </summary>
    public class ListTable1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string str = @"Data Source=PC-20201014BKEO\SQLEXPRESS;Initial Catalog=MySchool;Integrated Security=True";
            SqlConnection conn = new SqlConnection(str);
            string sql = @"select top 8 s.StudentNo,s.StudentName,s.Sex,r.StudentResult from Student s inner join Result r on s.StudentNo = r.StudentNo order by r.StudentResult desc
";
            List<MapInfo> list = new List<MapInfo>();
            SqlCommand comd = new SqlCommand(sql,conn);
            try
            {
                conn.Open();
                SqlDataReader read = comd.ExecuteReader();
                while(read.Read())
                {
                    MapInfo info = new MapInfo(read["StudentNo"].ToString(),read["StudentName"].ToString(),read["Sex"].ToString(),Convert.ToInt32(read["StudentResult"]));
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