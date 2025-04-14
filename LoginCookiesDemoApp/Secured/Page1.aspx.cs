using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginCookiesDemoApp.Secured
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["Authcookie"];
            if (c == null)
            {
                Response.Redirect("~/Login.aspx?ReturnUrl=" + Server.UrlEncode(Request.Path));
            } else
            {
                Response.Write("Welcome" + c.Value);
            }
        }
    }
}