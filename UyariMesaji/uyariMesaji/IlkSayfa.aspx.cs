using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace uyariMesaji
{
    public partial class IlkSayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (kullaniciAdi == "didem" && sifre == "4321")
            { 
                Response.Write("<script lang='javaScript'>alert('giriş başarılı');
                window.location = 'Default.aspx'</ScriptBehaviorDescriptor>");
            }
        }

       
    }
}