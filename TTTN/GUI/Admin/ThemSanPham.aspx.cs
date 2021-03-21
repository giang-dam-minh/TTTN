using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI.Admin
{
    public partial class ThemSanPham : System.Web.UI.Page
    {
        SanPham_BUS lop_son = new SanPham_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["TrangThai"].Equals("roi"))
            {
                Response.Redirect("/Admin/login.aspx");
            }
        }
        private void SaveFileUpload()
        {
            string str1, str2, str3, str4;
            if (fulAnh1.FileName != "")
            {
                str1 = Server.MapPath("../images/SanPham/" + fulAnh1.FileName);
                fulAnh1.PostedFile.SaveAs(str1);
            }
            if (fulAnh2.FileName != "")
            {
                str2 = Server.MapPath("../images/SanPham/" + fulAnh2.FileName);
                fulAnh2.PostedFile.SaveAs(str2);
            }
            if (fulAnh3.FileName != "")
            {
                str3 = Server.MapPath("../images/SanPham/" + fulAnh3.FileName);
                fulAnh3.PostedFile.SaveAs(str3);
            }
            if (fulAnh4.FileName != "")
            {
                str4 = Server.MapPath("../images/SanPham/" + fulAnh4.FileName);
                fulAnh4.PostedFile.SaveAs(str4);
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string ten = txtTenSP.Text;
            string mieuta = txtMieuTa.Text;
            string a1 = fulAnh1.FileName;
            float gia = float.Parse(txtGia.Text.ToString());
            int maQ = Int32.Parse(ddlQuaTang.SelectedValue);
            int maDM = Int32.Parse(ddlDanhMuc.SelectedValue);
            float giam = float.Parse(txtGiamGia.Text);
            string chiTiet = txtChiTietSP.Text;
            int sl = Int32.Parse(txtSoLuong.Text);
            string a2 = fulAnh2.FileName;
            string thanhP = txtThanhPhan.Text;
            string a3 = fulAnh3.FileName;
            string hdsd = txtHDSD.Text;
            string a4 = fulAnh4.FileName;

            lop_son.insertSanPham(ten, mieuta, a1, gia, maQ, maDM, giam, chiTiet, sl, a2, thanhP, a3, hdsd, a4);
            SaveFileUpload();
            Response.Write("<script> alert('Thêm thành công!')</script>");
            }

        protected void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtChiTietSP.Text = "";
            txtGia.Text = "";
            txtGiamGia.Text = "";
            txtHDSD.Text = "";
            txtMieuTa.Text = "";
            txtSoLuong.Text = "";
            txtTenSP.Text = "";
            txtThanhPhan.Text = "";
            txtTenSP.Focus();
        }
    }
}