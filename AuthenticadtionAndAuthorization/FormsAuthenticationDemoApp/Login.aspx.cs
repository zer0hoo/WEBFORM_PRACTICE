using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace FormsAuthenticationDemoApp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string un = txtLogin.Text;
            string pwd = txtPassword.Text;
            bool isAuthenticated = FormsAuthentication.Authenticate(un, pwd); // web.config에 있는 user, pwd와 비교할 거임
            if (isAuthenticated)
            {
                FormsAuthentication.RedirectFromLoginPage(un, chkRememberMe.Checked);
                //FormsAuthentication.SetAuthCookie(un, chkRememberMe.Checked); // 로그인 성공 시 쿠키에 값 저장해줄 거임(chkRememberMe 박스에 체크했는지 여부에 따라 다름)
                //string returl = Request.QueryString["ReturnUrl"];
                //if (string.IsNullOrEmpty(returl)) Response.Redirect("~/");
                //else Response.Redirect(returl);
            } else
            {
                lblError.Text = "Invalid username or password";
            }

        }
    }
}