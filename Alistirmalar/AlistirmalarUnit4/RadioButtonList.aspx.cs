using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlistirmalarUnit4
{
    public partial class RadioButtonList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public static string KayitGetir(HttpContext content)
        {
            return DateTime.Now.ToString();
        }
    }
}