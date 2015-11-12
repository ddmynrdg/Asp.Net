using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LINQEntity
{
    public partial class LinqEntity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AspNetOrnekEntities entity = new AspNetOrnekEntities();
            /******************select******************** 
             var ilanlar = (from i in entity.IsIlani  
                            select i.Baslik);
             foreach (var i in ilanlar)
             {
                 Label1.Text += i + "<br />";
             }*/

            /***************insert************************ 
             IsIlani yeniIlan = new IsIlani 
             {
                 Baslik = "Yeni İlan",
                 BitisTarihi = new DateTime(2015, 01, 12),
                 FirmaAdi = "Firma 1",
                 FirmaResim = "Resim.jpg",
                 Icerik = "Yeni ilan içeriği",
                // YayindaMi = true,
                 YayinlanmaTarihi = new DateTime(2015, 01, 12)
             };
             entity.IsIlani.Add(yeniIlan);
             entity.SaveChanges(); */

            /*******************update********************
            IsIlani ilan = entity.IsIlani.Where(i => i.IsIlaniId == 1008).FirstOrDefault(); 
            ilan.Baslik = "Güncel ilan";
            entity.SaveChanges(); */

            /********************delete*******************
            IsIlani ilan = entity.IsIlani.Where(i => i.IsIlaniId == 1009).FirstOrDefault(); 
            entity.IsIlani.Remove(ilan);
            entity.SaveChanges();*/
        }
    }
}