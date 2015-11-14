using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StronglTypedDataControls
{
    public class Urun
    {
        public int UrunId { get; set; }
        public string Ad { get; set; }
        public double Fiyat { get; set; }
    }

    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Urun> urunler = new List<Urun>()
            {
                new Urun{ Ad = "Peynir", Fiyat = 15},
                new Urun{ Ad = "Zeytin", Fiyat = 11},
                new Urun{ Ad = "Su", Fiyat = 1},
                new Urun{ Ad = "Şeker", Fiyat = 6},
                new Urun{ Ad = "Yoğurt", Fiyat = 3},
                new Urun{ Ad = "Pekmez", Fiyat = 12}
            };
            Repeater1.DataSource = urunler;
            Repeater1.DataBind();
        }
    }
   
}