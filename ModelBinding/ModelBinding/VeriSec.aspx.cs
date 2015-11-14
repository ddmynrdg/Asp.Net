using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ModelBinding
{
    public partial class VeriSec : System.Web.UI.Page
    {
        aspNetdenemeEntities db = new aspNetdenemeEntities();
        public IQueryable<Kategori> GetirKategoriler()
        {
            IQueryable<Kategori> query = db.Kategori;
            return query;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}