using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomValidator
{
    public partial class UyeKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmvCevap_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string cevap = "Ankara";
            string kullanicininCevabi = args.Value;
            if (cevap != kullanicininCevabi)
            {
                args.IsValid = false;
            }
        }
    }
}