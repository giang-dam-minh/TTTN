using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class GioHangDetailBUS
    {
        Data aDAL = new Data();
        public void InsertGioHangDetail(GioHangDetailDTO aDTO, DateTime NgayMua)
        {
            string sql = "Insert into GioHangDetail(maSanPham,SoLuongMua,Gia,NgayMua) values('" + aDTO.ID + "','" + aDTO.SoLuong + "','" + aDTO.Gia + "','" + NgayMua + "')";
            aDAL.ExcuteNonQuery(sql);
        }
    }
}
