using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModelBinding
{
    public partial class ValueProvider : System.Web.UI.Page
    {
        aspNetdenemeEntities db = new aspNetdenemeEntities();
        public IQueryable<Urun> GetirUrunler([QueryString("id")] string kategori)
        {
            IQueryable<Urun> sorgu = db.Urun;
            if (!string.IsNullOrEmpty(kategori))
            {
                int kategoriId = Convert.ToInt32(kategori);
                sorgu = db.Urun.Where(x => x.kategoriId == kategoriId); 
            }
            return sorgu;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}