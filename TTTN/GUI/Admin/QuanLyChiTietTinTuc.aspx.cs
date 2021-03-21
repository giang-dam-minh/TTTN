using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.Admin
{
    public partial class QuanLyChiTietTinTuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["TrangThai"].Equals("roi"))
            {
                Response.Redirect("/Admin/login.aspx");
            }
        }

        protected void btnThemTinTucDetail_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/ThemMoiTinTucDetail.aspx");
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}