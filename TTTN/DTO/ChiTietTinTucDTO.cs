using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class ChiTietTinTucDTO
    {
        private string ten;
        private string noiDung;
        private string hinhAnh;
        private int maTinTuc;

        public string Ten { get => ten; set => ten = value; }
        public string NoiDung { get => noiDung; set => noiDung = value; }
        public string HinhAnh { get => hinhAnh; set => hinhAnh = value; }
        public int MaTinTuc { get => maTinTuc; set => maTinTuc = value; }
        public ChiTietTinTucDTO()
        { }
        public ChiTietTinTucDTO(string ten, string noiDung, string hinhAnh, int maTinTuc)
        {
            Ten = ten;
            NoiDung = noiDung;
            HinhAnh = hinhAnh;
            this.MaTinTuc = maTinTuc;
        }
    }
}
