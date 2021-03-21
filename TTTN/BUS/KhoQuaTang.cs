using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class KhoQuaTang
    {
        Data aDAL = new Data();
        public DataTable showKhoQuaTang()
        {
            string sql = "select * from QuaTang";
            DataTable dt = aDAL.getTable(sql);
            return dt;
        }
    }
}
