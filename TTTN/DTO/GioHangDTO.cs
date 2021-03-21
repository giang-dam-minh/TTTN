using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class GioHangDTO
    {
        public GioHangDTO(string tenKH, string diaChi, string sDT, string email, string ghiChu)
        {
            TenKH = tenKH;
            DiaChi = diaChi;
            SDT = sDT;
            Email = email;
            GhiChu = ghiChu;
        }
        public GioHangDTO()
        {

        }

        public string TenKH { get; set; }
        public string DiaChi { get; set; }
        public string SDT { get; set; }
        public string Email { get; set; }
        public string GhiChu { get; set; }
    }
}
