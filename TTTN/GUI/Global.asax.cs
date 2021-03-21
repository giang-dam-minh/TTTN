using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace GUI
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //Đọc file SL
            Application.Lock();
            System.IO.StreamReader sr;
            sr = new System.IO.StreamReader(Server.MapPath("SL.txt"));
            string SL = sr.ReadLine();
            sr.Close();



            Application.UnLock();

            Application["SLTruyCap"] = SL;
            Application["DangTruyCap"] = "0";

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //gioHang
            Session["giohang"] = null;

            // Kiểm tra truy cập BackEnd
            Session["TrangThai"] = "";
            // Tăng sl người try cập
            Application["SLTruyCap"] = int.Parse(Application["SLTruyCap"].ToString()) + 1;



            // Đang truy cập
            Application["DangTruyCap"] = int.Parse(Application["DangTruyCap"].ToString()) + 1;

            // ghi đè file txt Số lượng
            System.IO.StreamWriter sw;
            sw = new System.IO.StreamWriter(Server.MapPath("SL.txt"));
            sw.Write(Application["SLTruyCap"].ToString());
            sw.Close();



        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}