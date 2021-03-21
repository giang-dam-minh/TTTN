using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace GUI.Admin.ThemMoi
{
    public partial class ThemMoiTinTuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["TrangThai"].Equals("roi"))
            {
                Response.Redirect("/Admin/login.aspx");
            }
        }
        TinTucBUS aBUS = new TinTucBUS();
        private void SaveFileUpload()
        {
            string strFilePath;
            if(FileUpload1.FileName!="")
            {
                strFilePath = Server.MapPath("../images/tintuc/" + FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(strFilePath);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            TinTucDTO a = new TinTucDTO(txtTieuDe.Text,FileUpload1.FileName,txtTomTat.Text);
            aBUS.InsertTinTuc(a);
            SaveFileUpload();
            Response.Write("<script> alert('Thêm Thành Công');</script>");
        }
        protected void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtTieuDe.Text = "";
            txtTomTat.Text = "";
            FileUpload1.FileName.Clone();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/QuanLyTinTuc.aspx");
        }
    }
}