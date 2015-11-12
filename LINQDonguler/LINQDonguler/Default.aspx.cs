using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LINQDonguler
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         // DonguFiltrele();
         // LINQFilter();
         // UrunGrupla();
            JOINUrunler();
        }

      /*  protected void DonguFiltrele()
        {
            List<Kisi> kisiler = new List<Kisi>();
            kisiler.Add(new Kisi { Ad = "Didem", Soyad = "Yanardağ" });
            kisiler.Add(new Kisi { Ad = "Hilal", Soyad = "Aksu" });
            kisiler.Add(new Kisi { Ad = "Ali", Soyad = "Can" });
            kisiler.Add(new Kisi { Ad = "Figen", Soyad = "Demir" });
            kisiler.Add(new Kisi { Ad = "Ömer", Soyad = "Yanardağ" });
            kisiler.Add(new Kisi { Ad = "Didem", Soyad = "Erol" });
            kisiler.Add(new Kisi { Ad = "Arzu", Soyad = "Yanardağ" });

            int akraba = 0;
            foreach (Kisi kayit in kisiler)
            {
                if (kayit.Soyad == "Yanardağ")
                    akraba++;
            }
            Label1.Text = akraba.ToString();
        }*/

        /* protected void LINQFilter()
        {
            List<Kisi> kisiler = new List<Kisi>();
            kisiler.Add(new Kisi { Ad = "Didem", Soyad = "Yanardağ", Kilo = 55, Meslek = "Muhendis", Yas = 22 });
            kisiler.Add(new Kisi { Ad = "Hilal", Soyad = "Aksu", Kilo = 52, Meslek = "Diyetisyen", Yas = 23 });
            kisiler.Add(new Kisi { Ad = "Ali", Soyad = "Can", Kilo = 63, Meslek = "Öğretmen", Yas = 25 });
            kisiler.Add(new Kisi { Ad = "Figen", Soyad = "Demir", Kilo = 56, Meslek = "Hemşire", Yas = 22 });
            kisiler.Add(new Kisi { Ad = "Ömer", Soyad = "Yanardağ", Kilo = 40, Meslek = "Öğrenci", Yas = 15 });
            kisiler.Add(new Kisi { Ad = "Didem", Soyad = "Erol", Kilo = 52, Meslek = "Oyuncu", Yas = 45 });
            kisiler.Add(new Kisi { Ad = "Arzu", Soyad = "Yanardağ", Kilo = 51, Meslek = "Oyuncu", Yas = 36 });

            /* int soydas = (from kayit in kisiler
                              where kayit.Soyad == "Yanardağ"
                              select kayit).Count();
            Label1.Text = soydas.ToString(); 

            var sahıslar = (from kayit in kisiler // 'sahıslar' değişkenine bir tür belirmediğim için 'var' olarak tanımladım
                          orderby kayit.Yas ascending
                            select new
                            {
                                kayit.Ad,
                                kayit.Soyad,
                                kayit.Yas
                            });
            string sonuc = "";
            foreach (var item in sahıslar)
            {
                sonuc += item.Ad + " " + item.Soyad + " " + item.Yas + "<br />";
            };
            Label1.Text = sonuc;
        }*/
        /*
        protected void UrunGrupla()
        { 
            List<Urun> urunler = new List<Urun>()
            {
                new Urun { Id = 1, Ad = "Peynir", Fiyat = 16, Adet = 12 },
                new Urun { Id = 2, Ad = "Zeytin", Fiyat = 9, Adet = 20 },
                new Urun { Id = 3 , Ad = "Yağ", Fiyat = 10, Adet = 16 },
                new Urun { Id = 4, Ad = "Peynir", Fiyat = 20, Adet = 7 },
                new Urun { Id = 5, Ad = "Zeytin", Fiyat = 11, Adet = 26 },
                new Urun { Id = 6, Ad = "Reçel", Fiyat =  9, Adet = 23 },
                new Urun { Id = 7, Ad = "Pekmez", Fiyat = 21, Adet = 4 },
                new Urun { Id = 8, Ad = "Peynir", Fiyat = 19 , Adet = 2 },
                new Urun { Id = 9, Ad = "Su", Fiyat = 3, Adet = 18 }            
            };

            var secilenler = from urun in urunler
                             group urun by urun.Ad into grup
                             select new { Adi = grup.Key, Urungrubu = grup };
            foreach (var urun in secilenler)
            {
                double urunFiyat = urun.Urungrubu.Sum(u => u.Fiyat * u.Adet);
                Label1.Text += urun.Adi + " " + urunFiyat + "TL<br />";
            }
                                
       } */
        protected void JOINUrunler()
        {
            List<Kategori> kategoriler = new List<Kategori>()
            {
                new Kategori { Id = 1, Ad = "Bilgisayar" },
                new Kategori { Id = 2, Ad = "Tablet" },
                new Kategori { Id = 3, Ad = "CepTelefonu" },
                new Kategori { Id = 4, Ad = "Elektroni" }

            };

            List<Urun> urunler = new List<Urun>()
            {
                new Urun { Id = 1, KategoriId = 1, Ad = "Laptop", Fiyat = 2500 },
                new Urun { Id = 2, KategoriId = 2, Ad = "Masaüstü Bilgisayar", Fiyat = 1100 },
                new Urun { Id = 3, KategoriId = 1, Ad = "TabletPC", Fiyat = 1100 },
                new Urun { Id = 4, KategoriId = 2, Ad = "Akıllı Telefon", Fiyat = 1200 },
                new Urun { Id = 5, KategoriId = 2, Ad = "Cep Telefonu", Fiyat = 300 },
                new Urun { Id = 6, KategoriId = 2, Ad = "Şarj Aleti", Fiyat = 20 },
                new Urun { Id = 7, KategoriId = 3, Ad = "Ütü", Fiyat = 150 },
                new Urun { Id = 8, KategoriId = 3, Ad = "Mikrodalga Fırın", Fiyat = 200 },
                new Urun { Id = 9, KategoriId = 3, Ad = "Çamaşır makinesi", Fiyat =1000 },
                new Urun { Id =10, KategoriId = 3, Ad = "Buzdolabı", Fiyat = 2000 }
            };
            var urunBilgisi = (from urun in urunler
                               join kategori in kategoriler
                                   on urun.KategoriId equals kategori.Id
                               select new
                               {
                                   UrunAdi = urun.Ad,
                                   urun.Fiyat,
                                   Kategori = kategori.Ad
                               });
            foreach (var urun in urunBilgisi)
            {
                Label1.Text += "Adı: " + urun.UrunAdi + ", Kategori : " + urun.Kategori +
                    ", Fiyat: " + urun.Fiyat + "TL<br />";
            }
        }
    }   
}