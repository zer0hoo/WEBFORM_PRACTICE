using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookiesDemoApp
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["TV"] != null) lblTV.Text = Request.Cookies["TV"].Value;
            else lblTV.Text = "0";

            if (Request.Cookies["Ref"] != null) lblRef.Text = Request.Cookies["Ref"].Value;
            else lblRef.Text = "0";

            if (Request.Cookies["AirConditioner"] != null) lblAirConditioner.Text = Request.Cookies["AirConditioner"].Value;
            else lblAirConditioner.Text = "0";
        }
    }
}