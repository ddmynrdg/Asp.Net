using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewState
{
    public partial class QueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string kod = Request.QueryString["kod"];
            //Label1.Text = "Ürün kodu : " + kod;
            if (Request.QueryString["kod"] != null) ;
            {
                string kod = Request.QueryString("kod");
                Label1.Text = "Ürün kodu : " + kod;
            }
        }
    }
}