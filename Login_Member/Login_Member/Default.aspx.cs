using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Login_Member
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uye"] != null)
            {
                string kullaniciAd = Session["Uye"].ToString();
                Label1.Text = Membership.GetUser(kullaniciAd).UserName;

            }
        }
    }
}