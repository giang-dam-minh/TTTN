using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BUS
{
    public class TaiKhoanBUS
    {
        Data aDAL = new Data();

        public List<TaiKhoanDTO> dsTaiKhoan(string Username, string Password)
        {
            List<TaiKhoanDTO> ds = new List<TaiKhoanDTO>();
            string sql = "select Username , Password  from Login where Username ='" + Username + "' and Password='" + Password + "'";
            ds = aDAL.dsTK(sql);
            return ds;
        }

        public int check(List<TaiKhoanDTO> dsTK)
        {
            if (dsTK.Count == 1)
            {
                return 1;
            }
            return 0;
        }
    }
}
