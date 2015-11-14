using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MVC1.Models
{
    public class KullaniciGirisModel
    {
        [Required]
        [Display(Name = "Kullanıcı Adı")]
        [StringLength(20, ErrorMessage = " {0} en az {2} karakter olmalıdır.", MinimumLength = 4)]
        public string KullaniciAdi { get; set; }

        [Required]
        [Display(Name = "Şifre")]
        [StringLength(20, ErrorMessage = "{0} en az {2} karakter olmalıdır.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        public string Sifre { get; set; }

    }
}