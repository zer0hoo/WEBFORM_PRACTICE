using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CachingWebApp
{
    public partial class DataCacheDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.Server);
            Response.Cache.SetMaxAge(new TimeSpan(0, 0, 30));
            Response.Write(DateTime.Now.ToLongTimeString() + "<br />");
            //DateTime dt;
            string content;
            if (Cache["content"] == null)
            {
                //dt = DateTime.Now;
                StreamReader sr = new StreamReader(MapPath("~/TextFile1.txt"));
                content = sr.ReadToEnd();
                sr.Close();
                Response.Write(content + " - is read from file");
                //Cache["content"] = content;
                System.Web.Caching.CacheDependency dep = new System.Web.Caching.CacheDependency(MapPath("~/TextFile1.txt"));
                Cache.Insert("content", content, dep);
                //Cache.Insert("content", content, dep, System.Web.Caching.Cache.NoAbsoluteExpiration, new TimeSpan(0, 0, 10));
            }
            else
            {
                content = (string)Cache["content"];
                Response.Write(content + " - is from cache");
            }

            //lblServerTime.Text = dt.ToLongTimeString();
        }
    }
}