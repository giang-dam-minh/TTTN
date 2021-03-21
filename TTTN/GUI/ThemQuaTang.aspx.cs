using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GUI.webForm
{
    public partial class ThemQuaTang : System.Web.UI.Page
    {
        string strCon = @"Data Source=DESKTOP-2P2A81O\SQLEXPRESS;Initial Catalog=imua1;Integrated Security=True";
        SqlConnection conn = null;
        SqlDataAdapter da = null;
        DataTable dt = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(strCon);
            conn.Open();
        }

        protected void SaveFileUpload()
        {
            string strFilePath;
            if (UpAnh.FileName != "")
            {
                strFilePath = Server.MapPath("~/images/QuaTang/" + UpAnh.FileName);
                UpAnh.PostedFile.SaveAs(strFilePath);
            }
        }

        


        protected void btThem_Click1(object sender, EventArgs e)
        {
            string sTenQT = txtTenQT.Text;
            string sMieuTa = txtMieuTa.Text;
            string sGia = txtGiaQT.Text;
            string sAnh = UpAnh.FileName;

            string strCmd = "insert into QuaTang(tenQuaTang,mieuTa,hinhAnhQua,giaQua) values('" + sTenQT + "','" + sMieuTa + "','" + "~/images/products/" + sAnh + "','" + sGia + "')";
            SaveFileUpload();
            cmd = new SqlCommand(strCmd, conn);
            cmd.ExecuteNonQuery();
        }

        protected void btNhaplai_Click1(object sender, EventArgs e)
        {
            txtTenQT.Text = "";
            txtMieuTa.Text = "";
            txtGiaQT.Text = "";
        }
    }
}