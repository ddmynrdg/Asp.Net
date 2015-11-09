using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlistirmalarUnit4
{
    public partial class ViewMultiViewSihirbaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btKayitKB_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btKayitEB_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void btKayitIB_Click(object sender, EventArgs e)
        {
            //bilgiyi kaydet
            MultiView1.ActiveViewIndex = 3;
        }
    }
}