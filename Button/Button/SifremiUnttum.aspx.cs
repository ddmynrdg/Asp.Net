using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Button
{
    public partial class SifremiUnttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btGonder_Click(object sender, EventArgs e)
        {
            string email = txbEPosta.Text;
            if (string.IsNullOrEmpty(email) == true)
            {
                lbMesaj.Text = "Eposta adresinizi yazın";
            }
            else
            {
                lbMesaj.Text = "";
            }
        }
    }
}