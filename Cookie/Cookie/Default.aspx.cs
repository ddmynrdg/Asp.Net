using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookie
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie kullaniciCookie = new HttpCookie("kullanici", "inowoman");
            kullaniciCookie.Expires = DateTime.Now.AddDays(1); //1-day
            Request.Cookies.Add(kullaniciCookie);
            Label1.Text = Request.Cookies["kullanici"].Value;
            Request.Cookies.Remove("kullanici");
            bool cookieVarmi = Request.Cookies["kullanici"] != null;
            Label1.Text = cookieVarmi.ToString();
        }
    }
}