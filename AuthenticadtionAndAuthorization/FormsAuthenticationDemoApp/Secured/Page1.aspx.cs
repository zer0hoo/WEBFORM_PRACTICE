using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormsAuthenticationDemoApp.Secured
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.IsInRole("r2")) btnOnlyForR2.Visible = true;
                else btnOnlyForR2.Visible = false;
            }
        }
    }
}