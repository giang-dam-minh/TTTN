using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

namespace GUI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static int CurrentPage;
        SanPham_BUS aBUS = new SanPham_BUS();
        protected void Page_Load(object sender, EventArgs e)
        {
            BindList();
        }

        void BindList()
        {
            string ten = Request.QueryString["tenSP"].ToString();
            PagedDataSource objPage = new PagedDataSource();
            try
            {
                objPage.DataSource = aBUS.ShowSPTen(ten).DefaultView;
                objPage.AllowPaging = true;
                objPage.PageSize = 16;
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