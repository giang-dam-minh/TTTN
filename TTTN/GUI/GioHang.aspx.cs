using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace GUI
{
    public partial class GioHang : System.Web.UI.Page
    {
        GioHangBUS gioBUS = new GioHangBUS();
        GioHangDetailBUS gioDetailBUS = new GioHangDetailBUS();

        protected void Page_Load(object sender, EventArgs e)
        {
            List<GioHangDetailDTO> giohang = Session["giohang"] as List<GioHangDetailDTO>;
            Cart.DataSource = giohang;
            Cart.DataBind();
            double TongTien = 0;
            foreach(GioHangDetailDTO item in giohang)
            {
                TongTien += item.ThanhTien;
            }
            lbTongTien.Text = TongTien.ToString();
            txtSoSanPham.Text = giohang.Count.ToString();
          }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            List<GioHangDetailDTO> giohang = Session["giohang"] as List<GioHangDetailDTO>;
            GioHangDTO gioDTO = new GioHangDTO(txtHoTen.Text,txtDiaChi.Text,txtSDT.Text,txtEmail.Text,txtGhiChu.Text);
            gioBUS.InsertGioHang(gioDTO);
            foreach (GioHangDetailDTO item in giohang)
            {
                gioDetailBUS.InsertGioHangDetail(item, DateTime.Now);
            }
            //giohang.Clear();
            //Cart.DataSource = giohang;
            //Cart.DataBind();
            //txtSoSanPham.Text = giohang.Count.ToString();
            Response.Write(" <script> alert('Đặt Hàng Thành Công'); </script>");
            CrearText();
            
        }
        public void CrearText()
        {
            txtHoTen.Text = "";
            txtDiaChi.Text = "";
            txtSDT.Text = "";
            txtGhiChu.Text = "";
        }
     
    }
}