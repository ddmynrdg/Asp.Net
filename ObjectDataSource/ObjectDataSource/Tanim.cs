using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ObjectDataSource
{
    public class Tanim
    {
        public static List<Cinsiyet> GetirCinsiyetler()
        {
            List<Cinsiyet>cinsiyetler = new List<Cinsiyet>();
            cinsiyetler.Add(new Cinsiyet {Deger = 1, Adi="Kadın"});
            cinsiyetler.Add(new Cinsiyet {Deger = 2, Adi = "Erkek"});
            return cinsiyetler;

        }
    }
}