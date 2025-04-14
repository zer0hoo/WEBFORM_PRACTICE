using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionsDemoApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string un = txtUsername.Text;
            string pwd = txtPassword.Text;
            if (un != null && un == pwd)
            {
                Session["username"] = un;
                Response.Redirect("~/WebForm1.aspx");
            }
            else lblError.Text = "Invalid username or password";
        }
    }
}