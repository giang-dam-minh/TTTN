using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace GUI
{
    public partial class Chi_Tiet_QT : System.Web.UI.Page
    {


        string strCon = @"Data Source=DESKTOP-2P2A81O\SQLEXPRESS;Initial Catalog=imua1;Integrated Security=True";
        SqlConnection conn = null;
        SqlDataAdapter da = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            string tim = Request.QueryString["maQuaTang"].ToString();
            conn = new SqlConnection(strCon);
            conn.Open();
            string sql = "select * from SanPham where tenSp like '%" + tim + "%'"; ;
            da = new SqlDataAdapter(sql, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}