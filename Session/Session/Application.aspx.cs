using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class Application : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Application["ilk"] = "Didem Yanardag";
            Application.Add("yeni", "Didem Yanardağ");
            //Label1.Text = Application["yeni"].ToString();
            //***************************//
           // Label1.Text = Session["yeni"].ToString();
            Application.Remove("yeni");
            //******************//
            bool applicationDegerVarmi = Application["yeni"] != null;
            Label1.Text = applicationDegerVarmi.ToString();


        }
    }
}