using Resources;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.Threading;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicServices
{
    public partial class Site : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadLang();
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
        }
        public void LoadLang()
        {
            if (Thread.CurrentThread.CurrentCulture.Name.Contains("ar"))
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
        public void ChangeCulture(string cult)
        {            
            Session["Culture"] = cult;
            Response.Redirect("~/");
        }
    }
}