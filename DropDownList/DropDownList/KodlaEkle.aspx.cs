using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DropDownList
{
    public partial class KodlaEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Sehirler> sehirler = new List<Sehirler>();
            sehirler.Add(new Sehirler { Adi = "Sehir Seçiniz...", Plaka = " " });
            sehirler.Add(new Sehirler { Adi = "Adana", Plaka = "01" });
            sehirler.Add(new Sehirler { Adi = "Mersin", Plaka = "33" });
            sehirler.Add(new Sehirler { Adi = "samsun", Plaka = "55" });

            DropDownList1.DataSource = sehirler;
            DropDownList1.DataTextField = "Adi";
            DropDownList1.DataValueField = "Plaka";
            DropDownList1.DataBind();
        }
    }
}