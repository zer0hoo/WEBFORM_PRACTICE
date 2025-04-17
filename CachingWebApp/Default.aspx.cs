using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CachingWebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.Server);
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(10));
            Response.Cache.SetMaxAge(new TimeSpan(0, 0, 10));
            Response.Cache.SetNoStore();
            Response.Cache.VaryByParams["p1"] = true;
            Response.Cache.VaryByParams["TextBox1"] = true;
            Response.Cache.SetValidUntilExpires(true);
            Response.Cache.SetVaryByCustom("Browser");
        }
    }
}