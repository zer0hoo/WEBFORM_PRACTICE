using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QSDemoApp
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string search = Server.UrlEncode(txtSearch.Text);
            Response.Redirect("~/Page2.aspx?search=" + search); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Context.Items["demo"] = txtSearch.Text; // context에 내용 담아서 보냄
            Server.Transfer("Page2.aspx");
        }
    }
}