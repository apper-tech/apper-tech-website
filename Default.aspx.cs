using Resources;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net.Mail;
using System.Resources;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicServices
{
    public partial class Default : System.Web.UI.Page
    {
        public Dictionary<string, string> Data { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadLang();
            //fill data from resource file
            Data = InitialzeList();
            Page.DataBind();
            

        }
        public Dictionary<string, string> InitialzeList()
        {
            Dictionary<string, string> res = new Dictionary<string, string>();
            ResourceSet resourceSet = SiteData.ResourceManager.GetResourceSet(CultureInfo.CurrentUICulture, true, true);
            foreach (DictionaryEntry entry in resourceSet)
            {
                string resourceKey = entry.Key.ToString();
                string resource = entry.Value.ToString();
                res.Add(resourceKey, resource);
            }
            return res;
        }

        protected void langbtn_Click(object sender, EventArgs e)
        {
            ChangeLang();
        }
        public void ChangeLang()
        {
            if (langbtn.Text == "العربية")
            {
                langbtn.Text = "English";
                langimg.ImageUrl = "/img/gb.png";
                ChangeCulture("ar");
            }
            else
            {
                langbtn.Text = "العربية";
                langimg.ImageUrl = "/img/sa.png";
                ChangeCulture("en");
            }
            Response.Redirect("~/");
        }
        public void LoadLang()
        {
            if (ChangeCulture("load").Contains("ar"))
            {
                langbtn.Text = "English";
                langimg.ImageUrl = "/img/gb.png";
            }
            else
            {
                langbtn.Text = "العربية";
                langimg.ImageUrl = "/img/sa.png";
            }

        }
        public string ChangeCulture(string cult)
        {
            System.Globalization.CultureInfo c = new System.Globalization.CultureInfo(WebConfigurationManager.AppSettings["DefaultCulture"]);
            if (cult == "load")
            {
                var dc = Session["Culture"] as System.Globalization.CultureInfo;
                if (dc != null)
                {
                    c = dc;
                }
            }
            else
                c = new System.Globalization.CultureInfo(cult);
            System.Threading.Thread.CurrentThread.CurrentCulture = c;
            System.Threading.Thread.CurrentThread.CurrentUICulture = c;
            Session["Culture"] = c;
            return c.Name;
        }
        public void Send_Email()
        {
            string MailServer = WebConfigurationManager.AppSettings["Host_MailServer"];
            string InfoUserName = WebConfigurationManager.AppSettings["Host_MailServer"];
            string InfoPassword = WebConfigurationManager.AppSettings["Host_MailServer"];
            //SendMail(InfoUserName, InfoPassword, MailServer, sub.Text, "Hi My Name Is : "+Name.Text+"<br>"+msg.Text, email.Text);
            SendMail(InfoUserName, InfoPassword, MailServer, sub.Text, "<br>" + msg.Text, email.Text);

        }
        void SendMail(string username, string password, string host, string title, string body, string recive)
        {
            //MailMessage m = new MailMessage();
            //SmtpClient sc = new SmtpClient();
            //m.From = new MailAddress(username);
            //m.To.Add(recive);
            //m.Subject = title;
            //m.Body += body;
            //m.IsBodyHtml = true;
            //sc.Host = host;
            MailMessage mail = new MailMessage(recive,
             WebConfigurationManager.AppSettings["Host_Mail_Info_Username"]);
            SmtpClient client = new SmtpClient();
           

            string str1 = "gmail.com";
            string str2 = username.ToLower();
            if (str2.Contains(str1))
            {
                try
                {
                    //sc.Port = 587;
                    //sc.Credentials = new System.Net.NetworkCredential(username, password);
                    //sc.EnableSsl = true;
                    //sc.Send(m);
                    client.Port = 587;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    //client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential(username, password);
                    client.Host = username;
                    mail.Subject = title;
                    mail.Body = body;
                    client.Send(mail);
                }
                catch (Exception ex)
                {
                }
            }
            else
            {
                try
                {
                    //sc.Port = 8889;
                    //sc.Credentials = new System.Net.NetworkCredential(username, password);
                    //sc.EnableSsl = false;
                    //sc.Send(m);
                    client.Port = 8889;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                   // client.UseDefaultCredentials = false;
                    client.Credentials = new System.Net.NetworkCredential(username, password);
                    client.Host = username;
                    mail.Subject = title;
                    mail.Body = body;
                    client.Send(mail);
                }
                catch (Exception ex)
                {
                }
            }
        }

        protected void Send_Click(object sender, EventArgs e)
        {
            Send_Email();
        }
    }
}