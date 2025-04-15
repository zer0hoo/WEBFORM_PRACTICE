using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookiesDemoApp
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            Response.Cookies["qualification"].Value = txtQualificadtion.Text;
            Response.Cookies["qualification"].Path = Request.ApplicationPath;

            Response.Cookies["country"].Value = txtCountry.Text;
            Response.Cookies["country"].Path = Request.ApplicationPath;

            Response.Redirect("Page3.aspx");
        }
    }
}