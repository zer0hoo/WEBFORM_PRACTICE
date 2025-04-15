using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookiesDemoApp
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddTVToCart_Click(object sender, EventArgs e)
        {
            AddProductToCart("TV");
        }

        protected void btnAddRefToCart_Click(object sender, EventArgs e)
        {
            AddProductToCart("Ref");
        }

        protected void btnAddAirConditionerToCart_Click(object sender, EventArgs e)
        {
            AddProductToCart("AirConditioner");
        }

        private void AddProductToCart(string name)
        {
            HttpCookie c = Request.Cookies[name];
            if (c == null)
            {
                c = new HttpCookie(name);
                c.Value = "1";
            }
            else c.Value = (int.Parse(c.Value) + 1).ToString();

            c.Expires = DateTime.Today.AddDays(3);
            c.Path = Request.ApplicationPath;
            Response.Cookies.Add(c);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        protected void btnRemoveTV_Click(object sender, EventArgs e)
        {
            RemoveFromCart("TV");
        }

        protected void btnRemoveRef_Click(object sender, EventArgs e)
        {
            RemoveFromCart("Ref");
        }

        protected void btnRemoveAirConditioner_Click(object sender, EventArgs e)
        {
            RemoveFromCart("AirConditioner");
        }

        private void RemoveFromCart(string name)
        {
            HttpCookie c = Request.Cookies[name];
            if (c == null) return;
            else
            {
                c.Value = (int.Parse(c.Value) -1).ToString();
                if (c.Value == "0") c.Expires = DateTime.Today.AddDays(-1);
                else c.Expires = DateTime.Today.AddDays(3);
            }

            c.Path = Request.ApplicationPath;
            Response.Cookies.Add(c);
        }
    }
}