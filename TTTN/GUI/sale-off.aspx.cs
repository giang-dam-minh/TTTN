using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
namespace GUI.danh_muc
{
    public partial class sale_off : System.Web.UI.Page
    {
        static int CurrentPage;
        SanPham_BUS aBUS = new SanPham_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {

            BindList();
        }
        void BindList()
        {
            PagedDataSource objPage = new PagedDataSource();
            try
            {
                objPage.DataSource = aBUS.SPSale().DefaultView;
                objPage.AllowPaging = true;
                objPage.PageSize = 20;
                objPage.CurrentPageIndex = CurrentPage;
                btnSau.Enabled = !objPage.IsLastPage;
                btnTruoc.Enabled = !objPage.IsFirstPage;
                DataList1.DataSource = objPage;
                DataList1.DataBind();
                // TotalRecord = dts.Tables[0].Rows.Count;            
            }
            catch (Exception)
            {
            }
            finally
            {
                objPage = null;
            }
        }

        protected void btnTruoc_Click(object sender, EventArgs e)
        {
            CurrentPage -= 1;
            BindList();
        }

        protected void btnSau_Click(object sender, EventArgs e)
        {
            CurrentPage += 1;
            BindList();
        }
    }
}