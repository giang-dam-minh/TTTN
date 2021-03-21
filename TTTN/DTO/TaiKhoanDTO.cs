using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class TaiKhoanDTO
    {
        public string username;
        public string password;

        public string Username { get => username; set => username = value; }
        public string Password { get => password; set => password = value; }

        public TaiKhoanDTO() { }
        public TaiKhoanDTO(string username, string password)
        {
            Username = username;
            Password = password;
        }
    }
}
