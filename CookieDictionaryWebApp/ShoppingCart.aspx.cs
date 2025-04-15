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
            HttpCookie c = Request.Cookies["shoppingcart"]; // shopping cart라는 단 하나의 쿠키만으로, 여러개의 정보를 저장하고자 함.
            if (c == null)
                c = new HttpCookie("shoppingcart");

            if (c.Values[name] == null) c.Values[name] = "1"; // shoppingcart 쿠키 안에 name이라는 subkey에 값 저장
            else c.Values[name] = (int.Parse(c.Values[name]) + 1).ToString();

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
            HttpCookie c = Request.Cookies["shoppingcart"];
            if (c == null) return;

            if (c.Values[name] != null && c.Values[name] != "0") c.Values[name] = (int.Parse(c.Values[name]) -1).ToString(); // shoppingcart 쿠키 내에 있는 name 서브키의 값 수정

            c.Expires = DateTime.MaxValue;
            c.Path = Request.ApplicationPath;
            Response.Cookies.Add(c);
        }
    }
}