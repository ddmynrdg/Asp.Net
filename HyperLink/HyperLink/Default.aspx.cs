using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HyperLink
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HyperLink1.NavigateUrl = "http//www.google.com";
            HyperLink1.Text = "Didemin kodu";
            HyperLink1.ForeColor = System.Drawing.Color.Green;
        }
    }
}