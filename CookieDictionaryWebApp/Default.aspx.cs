using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookieDictionaryWebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddToDictionary_Click(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["cd"];
            if (c == null) c = new HttpCookie("cd");
            c.Expires = DateTime.MaxValue;
            c.Values[txtSubKey.Text] = txtValue.Text;
            Response.Cookies.Add(c);
        }

        protected void btnShowDictionary_Click(object sender, EventArgs e)
        {
            lblValue.Text = "";
            HttpCookie c = Request.Cookies["cd"];
            if (c == null)
            {
                return;
            }
            foreach (string sk in c.Values)
            {
                lblValue.Text += sk + ":" + c.Values[sk] + "<br>";
            }
        }
    }
}