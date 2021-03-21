using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GUI.Admin
{
    public partial class QuanLyQuaTang1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["TrangThai"].Equals("roi"))
            {
                Response.Redirect("/Admin/login.aspx");
            }
        }

        protected void btnThemQuaTang_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThemQuaTang.aspx");
        }
    }
}