using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Button
{
    public partial class VeriAl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txbVeri = (TextBox)PreviousPage.FindControl("txbVeri");
            lbVeri.Text = txbVeri.Text;

        }
    }
}