using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityLINQExercises
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            aspNetdenemeEntities entity = new aspNetdenemeEntities();
            var kategoriler = (from kategori in entity.Kategori
                               select new
                               {
                                   kategori.KatagoriId,
                                   kategori.Ad
                               });
            Label1.Text += kategoriler;
           /* // II.yol
            var kategorilerII = entity.Kategori.Where(kategori => new
                {
                    kategori.KatagoriId,
                    kategori.Ad
                });

            var uyeler = (from uye in entity.Uye
                          select new
                          {
                              uye.Ad,
                              uye.Soyad,
                              uye.Eposta
                          });

            var uyelerII = entity.Uye.Select(uye => new
                {
                    uye.Ad,
                    uye.Soyad,
                    uye.Eposta
                });
            */
        }
    }
}