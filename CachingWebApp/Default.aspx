<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CachingWebApp.Default" %>

<%@ Register src="DemoUserControl.ascx" tagname="DemoUserControl" tagprefix="uc1" %>

<%@ OutputCache Duration="10" VaryByParam="none"VaryByCustom="Browser" VaryByHeader="referer" Location="Client" %>

<%--<%@ OutputCache CacheProfile="DemoProfile" %>--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ServerTime: <%= DateTime.Now.ToLongTimeString() %>
            <br />
            P1 = <%= Request.QueryString["p1"] %>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            <%--Referer: <%= Request.UrlReferrer.ToString() %>--%>
            <br />
            <br />
            <uc1:DemoUserControl ID="DemoUserControl1" runat="server" />
            <br />
            <asp:Substitution ID="Substitution1" MethodName="GetServerTime" runat="server" />
        </div>
    </form>
</body>
</html>
