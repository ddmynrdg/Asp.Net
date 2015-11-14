using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC1.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";

            ViewBag.Isim = "Didem Yanrdağ";
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";
            List<string> ekip = new List<string>()
            {
                "Didem Yanardağ",
                "Arzu Yanardağ",
                "Didem Erol",
                "Ali Can"
            };
            ViewBag.Ekip = ekip;

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
