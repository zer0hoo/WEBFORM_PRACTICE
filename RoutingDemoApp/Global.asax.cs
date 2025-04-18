﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace RoutingDemoApp
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.MapPageRoute("", "SalesReportSummary/{year}", "~/sales.aspx");

            RouteTable.Routes.MapPageRoute("SalesRoute", "SalesReport/{country}/{year}", "~/sales.aspx", true,
                new RouteValueDictionary {
                    {"country", "USA" },
                    {"year", DateTime.Now.Year.ToString()}
                },
                new RouteValueDictionary {
                    {"country", "[a-z]{3}"},
                    {"year", @"\d{4}" } 
                }
            );
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
    }
}