using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Login_Member
{
    public partial class UyeGiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
        {
            Session["Uye"] = Login1.UserName;
            Response.Redirect("Default.aspx");
        }
    }
}