using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DTO;
namespace GUI.Admin
{
    public partial class ThemMoiTinTucDetail : System.Web.UI.Page
    {
        ChiTietTinTucBUS aBUS = new ChiTietTinTucBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["TrangThai"].Equals("roi"))
            {
                Response.Redirect("/Admin/login.aspx");
            }
        }
        private void SaveFileUpload()
        {
            string strFilePath;
            if (FileUpload1.FileName != "")
            {
                strFilePath = Server.MapPath("../images/tintuc/" + FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(strFilePath);
            }
        }
        protected void btnThemMoi_Click(object sender, EventArgs e)
        {
            ChiTietTinTucDTO aDTO = new ChiTietTinTucDTO(txtTen.Text,txtNoiDung.Text,FileUpload1.FileName,int.Parse(DropDownList1.SelectedValue.ToString()));
            aBUS.InsertTinTucDetail(aDTO);
            SaveFileUpload();
            Response.Write("<script> alert('Thêm Thành Công');</script>");
        }

        protected void btnNhapLai_Click(object sender, EventArgs e)
        {
            txtTen.Text = "";
            txtNoiDung.Text = "";
            FileUpload1.FileName.Clone();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/QuanLyChiTietTinTuc.aspx");
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}