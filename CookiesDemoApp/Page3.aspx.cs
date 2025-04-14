using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookiesDemoApp
{
    public partial class Page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.Cookies["name"].Value;
            string age = Request.Cookies["age"].Value;
            string qualification = Request.Cookies["qualification"].Value;
            string country = Request.Cookies["country"].Value;

            lblSummary.Text = "Name: " + name + "<br />";
            lblSummary.Text += "Age: " + age + "<br />";
            lblSummary.Text += "Qualification: " + qualification + "<br />";
            lblSummary.Text += "Country: " + country + "<br />";
        }
    }
}