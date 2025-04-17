using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlobalizationDemoiApp
{
    public partial class Default : System.Web.UI.Page
    {

        public string dir = "ltr";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UserLanguages[0].ToLower().Contains("ar"))
                dir = "rtl";

            lblRealName1.Text = GetLocalResourceObject("lblRealNameTextKey").ToString();
            lblRealName1.ForeColor = System.Drawing.Color.FromName(GetLocalResourceObject("lblRealNameForeColorKey").ToString());

            decimal amount = 123456.12M;
            lblAmount.Text = amount.ToString("C");

            lblDate.Text = DateTime.Now.ToString();

            if (!IsPostBack)
            {
                if (Request.Cookies["culture"] != null)
                    ddlCulture.SelectedValue = Request.Cookies["culture"].Value;
            }
        }

        protected override void InitializeCulture()
        {
            //if (Request.Cookies["culture"] != null)
            //{
            //    Page.Culture = Request.Cookies["culture"].Value;
            //    Page.UICulture = Request.Cookies["culture"].Value;
            //}
        }

        protected void ddlCulture_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Cookies["culture"].Value = ddlCulture.SelectedValue;
            Response.Redirect(Request.RawUrl);
        }
    }
}