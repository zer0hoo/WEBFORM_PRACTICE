<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="RoutingDemoApp.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>this is sales report.</h2>
            Following are the details of:<%= Page.RouteData.Values["year"] %>
            <br /><br />
            <asp:Literal ID="Literal1" Text="<%$ RouteValue:country %>" runat="server"></asp:Literal>
            for the Year
            <asp:Literal ID="Literal2" Text="<%$ RouteValue:year %>" runat="server"></asp:Literal>
            
        </div>
    </form>
</body>
</html>
