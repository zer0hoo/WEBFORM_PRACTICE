using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginCookiesDemoApp.Secured
{
    public partial class Logout : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnLogout_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie("Authcookie");
            c.Expires = DateTime.Now.AddDays(-1);
            c.Path = Request.ApplicationPath;
            Response.Cookies.Add(c);
            Response.Redirect("~/Login.aspx?ReturnUrl=" + Server.UrlEncode(Request.Path));
        }
    }
}