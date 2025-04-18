using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoutingDemoApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RouteValueDictionary parameters = new RouteValueDictionary()
                                                {
                                                    {"country", "IND"},
                                                    {"year", "2008"}
                                                };
            VirtualPathData vpd = RouteTable.Routes.GetVirtualPath(null, "SalesRoute", parameters);
            HyperLink1.NavigateUrl = vpd.VirtualPath;
        }
    }
}