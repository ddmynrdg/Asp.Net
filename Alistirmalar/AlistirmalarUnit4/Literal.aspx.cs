using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlistirmalarUnit4
{
    public partial class Literal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text = "<h1>Yeni urun: Beyaz peynir </h1>";
        }
    }
}