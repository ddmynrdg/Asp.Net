using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlistirmalarUnit4
{
    public partial class ElemanaErisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ilAdi = ListBox1.SelectedItem.Text;
            string ilPlaka = ListBox1.SelectedItem.Value;

            Label1.Text = ilAdi + " ilinin plakası: " + ilPlaka;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ilAdi = ListBox1.Items[2].Text;
            string ilPlakasi = ListBox1.Items[2].Value;

            Label1.Text = ilAdi + " ilinin plakası ise: " + ilPlakasi;
        }
    }
}