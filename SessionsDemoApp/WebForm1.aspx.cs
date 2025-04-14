using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionsDemoApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int n = 0;
            if (!Session.IsNewSession)
                n = (int)Session["cnt"];
            n++;
            Session["cnt"] = n;
            lblCounter.Text = n.ToString();

            int m = 0;
            if (Application["cnt"] != null)
                m = (int)Application["cnt"];
            m++;
            Application["cnt"] = m;
            lblApplicationCounter.Text = m.ToString();

            if (Session["username"] == null)
            {
                lblLoginStatus.Text = "Please login";
                lnkLogin.Text = "Login";
            }
            else
            {
                lblLoginStatus.Text = "Welcome" + Session["username"].ToString();
                lnkLogin.Text = "Logout";
            }

            string url = "http://" + Request.Url.Host + Response.ApplyAppPathModifier("/Login.aspx"); // session 사용에 있어 cookieless 옵션 썼다면 ApplyAppPathModifier를 써줘야 한다. 안써주면 session 관련 정보 uri에 안뜨는 걸 보기 위해 Response.Write로 테스트함
            Response.Write(url);
        }

        protected void lnkLogin_Click(object sender, EventArgs e)
        {
            if (lnkLogin.Text == "Login") Response.Redirect("Login.aspx");
            else
            {
                Session.Remove("username");
                Response.Redirect(Request.Path);
            }
        }
    }
}