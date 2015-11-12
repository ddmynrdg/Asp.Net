using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Session
{
    public class Global : System.Web.HttpApplication
    {

        protected void Session_Start(object sender, EventArgs e)
        {
            int onlineUyeSayisi = Convert.ToInt32(Application["OnlineUyeSayisi"]);
            onlineUyeSayisi ++;
            Application["OnlineUyeSayisi"] = onlineUyeSayisi;
        }
        protected void Session_End(object sender, EventArgs e)
        {
            int onlineUyeSayisi = Convert.ToInt32(Application["OnlineUyeSayisi"]);
            onlineUyeSayisi --;
            Application["OnlineUyeSayisi"] = onlineUyeSayisi;
        }

    }
}