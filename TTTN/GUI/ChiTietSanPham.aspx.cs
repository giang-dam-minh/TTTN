using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
using System.Data;
using System.Data.SqlClient;
namespace GUI
{
    public partial class ChiTietSanPham : System.Web.UI.Page
    {
        
        SanPham_BUS lop_son = new SanPham_BUS();
        int maSP = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            int maSP = Int32.Parse(Request.QueryString["maSP"].ToString());
            DataList1.DataSource = lop_son.showChiTietSP(maSP);
            DataList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
        }

        protected void ntnThem_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnThemGioHang_Click(object sender, EventArgs e)
        {
            //int ID = Int32.Parse(Request.QueryString["maSP"].ToString());
            //if (Session["giohang"] == null)
            //{
            //    Session["giohang"] = new List<SanPhamDTO>();
            //}
            //List<SanPhamDTO> giohang = Session["giohang"] as List<SanPhamDTO>;

            //if (giohang.FirstOrDefault(m => m.ID == ID) == null)
            //{
            //    DataTable dt = lop_son.TimSP("Select * from SanPham where ID='" + ID + "'");

            //    SanPhamDTO newItem = new SanPhamDTO(int.Parse(dt.Rows[0]["maSP"].ToString()),
            //        dt.Rows[0]["tenSP"].ToString(), dt.Rows[0]["hinhAnh"].ToString(),
            //        int.Parse(dt.Rows[0]["soLuong"].ToString()), double.Parse(dt.Rows[0]["gia"].ToString()));
            //    giohang.Add(newItem);
            //    Session["giohang"] = giohang;
            //}
            //else
            //{

            //    foreach (SanPhamDTO item in giohang)
            //    {
            //        if (item.ID == ID)
            //        {
            //            item.SoLuong++;
            //        }
            //    }
            //    Session["giohang"] = giohang;
            //}
            //Response.Redirect("/Admin/login.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int maSP = Int32.Parse(Request.QueryString["maSP"].ToString());
            int SoLuongMua = int.Parse(txtSoLuong.Text);
            
            if (Session["giohang"] == null)
            {
                Session["giohang"] = new List<GioHangDetailDTO>();
            }
            List<GioHangDetailDTO> giohang = Session["giohang"] as List<GioHangDetailDTO>;

            if (giohang.FirstOrDefault(m => m.ID == maSP) == null)
            {
                DataTable dt = lop_son.TimSP("Select * from SanPham where maSP='" + maSP + "'");

                GioHangDetailDTO newItem = new GioHangDetailDTO(int.Parse(dt.Rows[0]["maSP"].ToString()),
                    dt.Rows[0]["tenSP"].ToString(), dt.Rows[0]["hinhAnh"].ToString(), SoLuongMua
                    , double.Parse(dt.Rows[0]["gia"].ToString()));
                giohang.Add(newItem);
                Session["giohang"] = giohang;
            }
            else
            {
                foreach (GioHangDetailDTO item in giohang)
                {
                    if (item.ID == maSP)
                    {
                        item.SoLuong++;
                    }
                }
                Session["giohang"] = giohang;
            }
            Response.Redirect("GioHang.aspx");
        }
    }
}