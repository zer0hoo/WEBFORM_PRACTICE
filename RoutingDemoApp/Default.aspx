<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RoutingDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a runat="server" href="~/salesreportsummary/2013">Sales report for year 2013</a>
            <br />
            <a runat="server" href="~/salesreportsummary/2013">Sales Report of India for the year 2010</a>

            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="<%$RouteUrl:year=2012 %>">
                Sales Report - All countries, 2012
            </asp:HyperLink>

            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="<%$ RouteUrl:country=IND,year=2009,routename=salesroute %>" Text="<%$ RouteUrl:RouteName=SalesRoute,country=IND,year=2009 %>"></asp:HyperLink>
        </div>
    </form>
</body>
</html>
