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
    public class ChiTietTinTucBUS
    {
        Data aDAL = new Data();
        public DataTable showChiTietTinTuc(int ID)
        {
            string sql = "select * from ChiTietTinTuc where maTinTuc ='" + ID + "'";
            DataTable dt = aDAL.getTable(sql);
            return dt;
        }

        public void InsertTinTucDetail(ChiTietTinTucDTO a)
        {
            string sql = "insert into ChiTietTinTuc(Ten,NoiDung,HinhAnh,maTinTuc) values(N'" + a.Ten + "',N'" + a.NoiDung + "',N'" + "~/images/tintuc/" + a.HinhAnh + "','" + a.MaTinTuc + "')";
            aDAL.ExcuteNonQuery(sql);
        }
        public void TangSLTruyCap(int ID)
        {
            string sql = "update TinTuc set SLTruyCap= SLTruyCap+1 where maTinTuc=" + ID;
            aDAL.ExcuteNonQuery(sql);
        }
    }
}
