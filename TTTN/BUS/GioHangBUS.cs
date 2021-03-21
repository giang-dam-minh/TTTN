using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class GioHangBUS
    {
        Data aBUS = new Data();
        public void InsertGioHang(GioHangDTO aDTO)
        {
            string sql = "Insert into GioHang values(N'" + aDTO.TenKH + "',N'" + aDTO.DiaChi + "','" + aDTO.SDT + "','" + aDTO.Email + "',N'" + aDTO.GhiChu + "')";
            aBUS.ExcuteNonQuery(sql);
        }
    }
}
