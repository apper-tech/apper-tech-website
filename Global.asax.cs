using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace DynamicServices
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
        void Application_AcquireRequestState(object sender, EventArgs e)
        {
            string cultureName = System.Web.Configuration.WebConfigurationManager.AppSettings["DefaultCulture"];
            if (HttpContext.Current.Session != null &&
                HttpContext.Current.Session["Culture"] is string)
                cultureName = HttpContext.Current.Session["Culture"] as string;

            if (Thread.CurrentThread.CurrentUICulture.Name == cultureName)
                return;

            Thread.CurrentThread.CurrentUICulture = new CultureInfo(cultureName);
            Thread.CurrentThread.CurrentCulture = Thread.CurrentThread.CurrentUICulture;
        }
    }
}