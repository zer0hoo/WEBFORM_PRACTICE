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
            HttpCookie dic = Request.Cookies["shoppingcart"];
            if (dic == null)
                return;

            if (dic.Values["TV"] != null) lblTV.Text = dic.Values["TV"];
            else lblTV.Text = "0";

            if (dic.Values["Ref"] != null) lblRef.Text = dic.Values["Ref"];
            else lblRef.Text = "0";

            if (dic.Values["AirConditioner"] != null) lblAirConditioner.Text = dic.Values["AirConditioner"];
            else lblAirConditioner.Text = "0";
        }
    }
}