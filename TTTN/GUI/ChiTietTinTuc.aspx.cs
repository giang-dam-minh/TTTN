using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.Data;
using System.Data.SqlClient;
namespace GUI
{
    public partial class ChiTietTinTuc : System.Web.UI.Page
    {
        TinTucBUS ttBUS = new TinTucBUS();
        ChiTietTinTucBUS ChiTietBUS = new ChiTietTinTucBUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ID = Int32.Parse(Request.QueryString["id"].ToString());
            DataTable dt = ttBUS.SearchTinTuc(ID);
            DataList1.DataSource = dt;
            DataList1.DataBind();

            DataTable dt1 = ChiTietBUS.showChiTietTinTuc(ID);
            DataList2.DataSource = dt1;
            DataList2.DataBind();

            //Tăng sl truy cập tin tức 
            ChiTietBUS.TangSLTruyCap(ID);
        }
    }
}