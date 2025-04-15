using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace FormsAuthenticationDemoApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                lbtnLogin.Text = "Logout";
                ltrUsername.Text = User.Identity.Name;
            }
            else
            {
                lbtnLogin.Text = "Login";
                ltrUsername.Text = "Guest";
            }
        }

        protected void lbtnLogin_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                System.Web.Security.FormsAuthentication.SignOut();
                lbtnLogin.Text = "Login";
            }
            else Response.Redirect("Login.aspx");
        }

        protected void btnEncrypt_Click(object sender, EventArgs e)
        {
            txtPassword.Text = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "MD5");
        }
    }
}