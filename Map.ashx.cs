using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;

namespace EChart
{
    /// <summary>
    /// Map 的摘要说明
    /// </summary>
    public class Map : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string str = @"Data Source=PC-20201014BKEO\SQLEXPRESS;Initial Catalog=MySchool;Integrated Security=True";
            SqlConnection conn = new SqlConnection(str);
            string sql = @"select * from Result where StudentResult >60";
            SqlCommand comd = new SqlCommand(sql,conn);
            List<MapInfo> list = new List<MapInfo>();
            try
            {
                conn.Open();
                SqlDataReader read = comd.ExecuteReader();
                while (read.Read())
                {
                    MapInfo info2 = new MapInfo(read["StudentNo"].ToString(), Convert.ToInt32(read["StudentResult"]));
                    list.Add(info2);
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