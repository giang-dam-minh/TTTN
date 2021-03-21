using BUS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.webForm
{
    public partial class MasterPage_khongMenuDoc : System.Web.UI.MasterPage
    {
        SanPham_BUS spBUL = new SanPham_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sl Khách truy cập
            lblSLKhach.Text = Application["SLTruyCap"].ToString();
            LblTruyCap.Text = Application["DangTruyCap"].ToString();

            
            dtlst1.DataSource = spBUL.Top2SPSale();
            dtlst1.DataBind();
        }

        protected void btnTim_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Tim-Kiem.aspx?TimKiem=" + txtTim.Text);
        }
    }
}