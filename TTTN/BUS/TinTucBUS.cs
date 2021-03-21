using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class TinTucBUS
    {
        Data aDAL = new Data();
        public DataTable showTinTucIndex()
        {
            string sql = "select top 4 * from TinTuc";
            DataTable dt = aDAL.getTable(sql);
            return dt;
        }
        public DataTable showTinTuc()
        {
            string sql = "select * from TinTuc";
            DataTable dt = aDAL.getTable(sql);
            return dt;
        }
        public DataTable showTopTinTuc()
        {
            string sql = "select top 8 * from TinTuc order by SLTruyCap desc";
            DataTable dt = aDAL.getTable(sql);
            return dt;
        }
        public DataTable SearchTinTuc(int ID)
        {
            string sql = "select * from TinTuc where maTinTuc = '" + ID + "' ";
            DataTable dt = aDAL.getTable(sql);
            return dt;
        }
        public void InsertTinTuc(TinTucDTO a)
        {
            string sql = "insert into TinTuc(TieuDe,HinhAnhBia,TomTat) values(N'" + a.TieuDe + "','" + "~/images/tintuc/" + a.HinhAnh + "',N'" + a.TomTat + "')";
            aDAL.ExcuteNonQuery(sql);
        }

    }
}
