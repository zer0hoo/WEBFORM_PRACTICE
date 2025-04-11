using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RedirectiongToAnotherPageDemoApp
{
    public partial class Source : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            string value = txtDemo.Text;
            Response.Redirect("Target.aspx?demo=" + value); // query로 인자 전달
        }

        protected void btnTransfer_Click(object sender, EventArgs e)
        {
            Context.Items["demo"] = txtDemo.Text;
            Server.Transfer("Target.aspx");
        }

        public string DemoText
        {
            get
            {
                return txtDemo.Text;
            }
        }

        protected void btnCrossPagePostback_Click(object sender, EventArgs e)
        {

        }
    }
}