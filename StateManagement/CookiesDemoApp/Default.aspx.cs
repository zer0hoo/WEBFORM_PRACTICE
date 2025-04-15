using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookiesDemoApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSetCookie_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie(txtKey.Text);
            c.Value = txtValue.Text;
            c.Path = Request.ApplicationPath;
            if (chkPersistance.Checked) c.Expires = DateTime.MaxValue;
            c.Secure = chkPersistance.Checked; // 이 옵션 true인 쿠키를 http 프로토콜에서 요청 시 받지 못함. https 프로토콜에서만 받을 수 있음
            Response.Cookies.Add(c);
        }

        protected void btnGetCookie_Click(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies[txtKey.Text];
            if (c == null) txtValue.Text = "----";
            else txtValue.Text = c.Value;
        }

        protected void btnDestroyCookie_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie(txtKey.Text);
            c.Path = Request.ApplicationPath;
            c.Expires = DateTime.Today.AddDays(-1); // 하루 전으로 expire를 줘서 없애버림
            Response.Cookies.Add(c);
        }

        protected void btnGetAllCookies_Click(object sender, EventArgs e)
        {
            lblValue.Text = "";
            foreach( string key in Request.Cookies)
            {
                lblValue.Text += key + ":" + Request.Cookies[key].Value + "<br/>";
            }
        }
    }
}