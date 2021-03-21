using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class SanPham_BUS
    {
        Data da = new Data();

        public DataTable ShowSPAll()
        {
            string sql = "select * from SanPham";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public DataTable TimSP(string sql)
        {
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public DataTable ShowSPIndex(int ma)
        {
            string sql = "select top 10 * from SanPham where maDanhMuc = '" + ma + "'";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public DataTable ShowSPBanChay()
        {
            string sql = "select top 10*  from SanPham inner join GioHangDetail on SanPham.maSP = GioHangDetail.maSanPham" +
                "order by GioHangDetail.SoLuongMua desc";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public DataTable ShowSP(int ma)
        {
            string sql = "select * from SanPham where maDanhMuc = '" + ma + "'";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public DataTable ShowSPTen(string ten)
        {
            string sql = "select * from SanPham where tenSP like N'%" + ten + "%'";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public DataTable showChiTietSP(int ma)
        {
            string sql = "select * from SanPham inner join QuaTang on SanPham.maQuaTang=QuaTang.maQuaTang where maSP ='" + ma + "'";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public void insertSanPham(string ten, string mieuta, string a1, float gia, int maQ, int maDM, float giam, string chiTiet, int sl, string a2, string thanhP, string a3, string hdsd, string a4)
        {
            string sql = "insert SanPham values(N'" + ten + "',N'" + mieuta + "','" + "~/images/SanPham/" + a1 + "'," + gia + "," + maQ + "," + maDM + "," + giam + ",N'" + chiTiet + "'," + sl + ",'" + "~/images/SanPham/" + a2 + "',N'" + thanhP + "','" + "~/images/SanPham/" + a3 + "',N'" + hdsd + "','" + "~/images/SanPham/" + a4 + "')";
            da.ExcuteNonQuery(sql);
        }
        public DataTable SPSale()
        {
            string sql = "select * from SanPham  where giamGia > 0";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public DataTable Top2SPSale()
        {
            string sql = "select top 2 * from SanPham  where giamGia>0 order by giamGia desc";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
        public DataTable timKiem(string tim)
        {
            string sql = "select * from SanPham inner join DanhMuc on SanPham.maDanhMuc=DanhMuc.maDanhMuc where tenSP like N'%" + tim + "%' or tenDanhMuc like N'%" + tim + "%'";
            DataTable dt = new DataTable();
            dt = da.getTable(sql);
            return dt;
        }
    }
}
