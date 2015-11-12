using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LINQDonguler
{
    public class Kategori
    {
        public int Id { get; set; }
        public string Ad { get; set; }
    }
    public class Urun
    {
        public int Id { get; set; }
        public string Ad { get; set; }
        public int Fiyat { get; set; }
        public int KategoriId { get; set; }
    }
   
    
}