using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace GUI
{
    public partial class index : System.Web.UI.Page
    {
        TinTucBUS tinBUS = new TinTucBUS();
        SanPham_BUS spBUS = new SanPham_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            dlsTinTuc.DataSource = tinBUS.showTinTucIndex();
            dlsTinTuc.DataBind();

            dtlTrangDiem.DataSource = spBUS.ShowSPIndex(1);
            dtlTrangDiem.DataBind();

            dtlDieuTri.DataSource = spBUS.ShowSPIndex(2);
            dtlDieuTri.DataBind();

            dtlDaMat.DataSource = spBUS.ShowSPIndex(3);
            dtlDaMat.DataBind();

            dtlToanThan.DataSource = spBUS.ShowSPIndex(4);
            dtlToanThan.DataBind();

            dtlBanChay.DataSource = spBUS.ShowSPIndex(1);
            dtlBanChay.DataBind();
        }
    }
}