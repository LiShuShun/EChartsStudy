using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EChart
{
    public class MapInfo
    {
        public string No { get; set; }
        public int Result { get; set; }
        public string Name { get; set; }
        public string Sex { get; set; }

        public MapInfo() { }
        
        /// <summary>
        /// 学号，成绩
        /// </summary>
        /// <param name="no"></param>
        /// <param name="result"></param>
        public MapInfo(string no,int result)
        {
            this.No = no;
            this.Result = result;
        }

       /// <summary>
       /// /学号，姓名，性别，成绩
       /// </summary>
       /// <param name="no"></param>
       /// <param name="name"></param>
       /// <param name="sex"></param>
       /// <param name="result"></param>
        public MapInfo(string no, string name, string sex, int result)
        {
            this.No = no;
            this.Name = name;
            this.Sex = sex;
            this.Result = result;
        
        }
    }
}