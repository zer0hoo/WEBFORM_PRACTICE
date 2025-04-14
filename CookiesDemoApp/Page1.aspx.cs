using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookiesDemoApp
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie("name");
            c.Value = txtName.Text;
            c.Path = Request.ApplicationPath;
            Response.Cookies.Add(c);

            Response.Cookies["age"].Value = txtAge.Text;
            Response.Cookies["age"].Path = Request.ApplicationPath;

            Response.Redirect("Page2.aspx");
        }
    }
}