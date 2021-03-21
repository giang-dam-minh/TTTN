using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DTO;
using BUS;
namespace GUI.admin
{
    public partial class login : System.Web.UI.Page
    {
        TaiKhoanBUS aBUS = new TaiKhoanBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            List<TaiKhoanDTO> ds = aBUS.dsTaiKhoan(txtUsername.Text,txtPassword.Text);

            if (aBUS.check(ds)==1)
            {
                Session["TrangThai"] = "roi";
                Response.Redirect("/Admin/Administrator.aspx");
            }
            else
            {
                Session["TrangThai"] = "chua";
                Response.Write(" <script> alert('Sai tên tài khoản hoặc mật khẩu!'); </script>" );
            }
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}