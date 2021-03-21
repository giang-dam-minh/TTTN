using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class TinTucDTO
    {
        private string tieuDe;

        private string hinhAnh;

        private string tomTat;

        public string TieuDe { get => tieuDe; set => tieuDe = value; }
        public string HinhAnh { get => hinhAnh; set => hinhAnh = value; }
        public string TomTat { get => tomTat; set => tomTat = value; }

        public TinTucDTO()
        {
        }
        public TinTucDTO(string tieuDe, string hinhAnh, string tomTat)
        {
            this.TieuDe = tieuDe;
            this.HinhAnh = hinhAnh;
            this.TomTat = tomTat;
        }
    }
}
