using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlistirmalarUnit4
{
    public partial class WizartSihirbaz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Wizard1_FinishButtoClick(object sender, WizardNavigationEventArgs e)
        {
            //sihirbazdaki kontrolleri kaydetme işlemlerini burda yapıyorum
            Wizard1.Visible = false;
        }
        
    }
}