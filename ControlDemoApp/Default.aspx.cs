using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlDemoApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uclogin_Authenticated(object sender, AuthenticatedEventArgs e)
        {
            string un = e.AuthenticatedUsername;
            Response.Redirect("WelcomeAuthenticatedUser.aspx?username=" + un); // query로 un 넘겨줌
        }
    }
}