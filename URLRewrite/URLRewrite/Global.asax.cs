using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace URLRewrite
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            string link = HttpContext.Current.Request.RawUrl;
            string urunLink = "Urun-";
            if (link.Contains(urunLink))
            {
                string isim = link.Substring(link.IndexOf(urunLink) + urunLink.Length);
                string urunId = isim.Substring(0, isim.IndexOf("-"));
                HttpContext.Current.RewritePath("~/Urun.aspx?id=" + urunId, false);
            }
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