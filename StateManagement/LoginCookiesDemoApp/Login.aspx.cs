using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginCookiesDemoApp
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
            if (un != "" && un == pwd)
            {
                HttpCookie c = new HttpCookie("Authcookie");
                c.Value = un;
                if (chkRemember.Checked) c.Expires = DateTime.Now.AddDays(7);

                c.Path = Request.ApplicationPath;
                Response.Cookies.Add(c);
                string returl = Request.QueryString["ReturnUrl"];
                if (string.IsNullOrEmpty(returl)) Response.Redirect("~/Default.aspx");
                else Response.Redirect(returl);

                Response.Redirect("~/Default.aspx");
            }
            else lblError.Text = "Invalid u/p";
        }
    }
}