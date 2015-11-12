using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LINQDonguler
{
    public partial class DefaultII : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Average();
        }

        protected void Average()
        {
            List<Ogrenci> ogrenciler = new List<Ogrenci>()
            {
                new Ogrenci { OgrenciNo = "1", AdSoyad = "Didem Yanardağ", Ders = "Asp.Net", Not = 95 },
                new Ogrenci { OgrenciNo = "1", AdSoyad = "Didem Yanrdağ", Ders = "JAVA", Not = 98 },
                new Ogrenci { OgrenciNo = "1", AdSoyad = "Didem Yanardağ", Ders = "Matlab", Not = 96 },
                new Ogrenci { OgrenciNo = "2", AdSoyad = "Besra Yarat", Ders = "Fizik", Not = 76 },
                new Ogrenci { OgrenciNo = "2", AdSoyad = "Besra Yarat", Ders = "Matematik", Not = 85 },
                new Ogrenci { OgrenciNo = "3", AdSoyad = "Gül Yaşar", Ders = "JAVA", Not = 89 },
                new Ogrenci { OgrenciNo = "3", AdSoyad = "Gül Yaşar", Ders = "Matematik", Not = 55 },
                new Ogrenci { OgrenciNo = "4", AdSoyad = "Ali Can", Ders = "Fizik", Not = 64 },
                new Ogrenci { OgrenciNo = "4", AdSoyad = "Ali Can", Ders = "Asp.Net", Not = 78 }
            };
            var notOrt = ogrenciler.Average(o => o.Not);
            Label1.Text = notOrt.ToString();

            var OgrenciSayisi = ogrenciler.Count();
            Label2.Text = OgrenciSayisi.ToString();

            var IlkKisi = ogrenciler.FirstOrDefault();
            Label3.Text = "Öğrenci No: " + IlkKisi.OgrenciNo + "<br />Ad Soyadı: " + IlkKisi.AdSoyad +
                "<br /> Ders: " + IlkKisi.Ders + "<br /> Not: " + IlkKisi.Not;

            var sonKisi = ogrenciler.Last();
            Label4.Text = "Öğrenci No: " + sonKisi.OgrenciNo + "<br />Ad Soyadı: " + sonKisi.AdSoyad +
                "<br /> Ders: " + sonKisi.Ders + "<br /> Not: " + sonKisi.Not;

            var maxNot = ogrenciler.Max(o => o.Not);
            Label5.Text = maxNot.ToString();

            var minNot = ogrenciler.Min(o => o.Not);
            Label6.Text = minNot.ToString();

            var sirali = ogrenciler.OrderBy(o => o.Not);
            foreach (var ogrenci in sirali)
            {
                Label7.Text += "Öğrenci No: " + ogrenci.OgrenciNo + "<br />Ad Soyadı: " + ogrenci.AdSoyad +
                "<br /> Ders: " + ogrenci.Ders + "<br /> Not: " + ogrenci.Not + "<hr />";
            };

            var TersSirali = ogrenciler.OrderByDescending(o => o.Not);
            foreach (var ogrenci2 in TersSirali)
            {
                Label8.Text += "Öğrenci No: " + ogrenci2.OgrenciNo + "<br />Ad Soyadı: " + ogrenci2.AdSoyad +
                "<br /> Ders: " + ogrenci2.Ders + "<br /> Not: " + ogrenci2.Not + "<hr />";
            };

        }
    }
}