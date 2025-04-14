<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="CookiesDemoApp.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="ProductImages/tv.jpeg" width="100" height="100" />
            <asp:Button ID="btnAddTVToCart" runat="server" Text="Add To Cart" OnClick="btnAddTVToCart_Click" />
            <asp:Button ID="btnRemoveTV" runat="server" Text="RemoveFromCart" />
            <br />
            <img src="ProductImages/ref1.jpeg" width="100" height="100" />
            <asp:Button ID="btnAddRefToCart" runat="server" Text="Add To Cart" OnClick="btnAddRefToCart_Click" />
            <asp:Button ID="btnRemoveRef" runat="server" Text="RemoveFromCart" />
            <br />
            <img src="ProductImages/airconditioner.jpeg" width="100" height="100" />
            <asp:Button ID="btnAddAirConditionerToCart" runat="server" Text="Add To Cart" OnClick="btnAddAirConditionerToCart_Click" />
            <asp:Button ID="btnRemoveAirConditioner" runat="server" Text="RemoveFromCart" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" />
            <br />
        </div>
    </form>
</body>
</html>
