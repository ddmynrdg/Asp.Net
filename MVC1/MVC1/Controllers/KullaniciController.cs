using MVC1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MVC1.Controllers
{
    public class KullaniciController : Controller
    {
        public ActionResult KullaniciGiris ()
        {
            return View();
        }
        [HttpPost]
        public ActionResult KullaniciGiris(KullaniciGirisModel model, string returnUrl)
        {
            if (ModelState.IsValid)
            {

                if (model.KullaniciAdi.ToLower() == "didemyanardag" && model.Sifre == "654321")
                {
                    FormsAuthentication.SetAuthCookie(model.KullaniciAdi, false);
                    return RedirectToAction("Index", "Home");
                }
                else 
                {
                    ModelState.AddModelError("", "Lütfen kullanıcı bilgilerini kontrol et.");
                }
            }
            return View(model);
        }

    }
}
