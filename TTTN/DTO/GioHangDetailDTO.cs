using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class GioHangDetailDTO
    {
        public GioHangDetailDTO(int iD, string tenSP, string hinhAnh, int soLuong, double gia)
        {
            ID = iD;
            TenSP = tenSP;
            HinhAnh = hinhAnh;
            SoLuong = soLuong;
            Gia = gia;
            ThanhTien = gia * soLuong;
        }
        public GioHangDetailDTO()
        {

        }
        public int ID { get; set; }
        public string TenSP { get; set; }
        public string HinhAnh { get; set; }
        public int SoLuong { get; set; }
        public double Gia { get; set; }

        public double ThanhTien { get; set; }


    }
}
