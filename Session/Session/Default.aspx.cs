using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // I.Yol:Session["ilk"] = "Didem Yanardag";
            //II.Yol:
            Session.Add("yeni", "Didem Yanardağ");
            // Label1.Text = Session["yeni"].ToString();
            Session.Remove("yeni");
            bool sessionVarmi = Session["yeni"] != null;
            Label1.Text = sessionVarmi.ToString();
        }        
    }
}