using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TarihFormatlama
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btTarihGöster_Click(object sender, EventArgs e)
        {
            DateTime trh = DateTime.Today;
            lbTarihVarsayilan.Text = trh.ToString();
            string FormatliTarih = string.Format("{0:dd:MM:yyyy}", trh);
            lbTarihFormatli.Text = FormatliTarih;
        
            
         }
    }
}