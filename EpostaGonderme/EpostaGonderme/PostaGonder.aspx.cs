using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace EpostaGonderme
{
    public partial class PostaGonder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage ePosta = new MailMessage();
            ePosta.From = new MailAddress("didem.yanardag19@gmail.com");
            ePosta.To.Add(txbKime.Text);
            ePosta.Subject = txbKonu.Text;
            ePosta.Body = txbIcerik.Text;
            SmtpClient smtp = new SmtpClient();
            smtp.Credentials = new NetworkCredential("didem.yanardag19@gmail.com", "Didem321");
            smtp.Port = 587;
            smtp.Host = "mail.gmail.com";
            smtp.Send(ePosta);
            btGonders.Text = "Eposta başarıyla gönderildi.";
        }
    }
}