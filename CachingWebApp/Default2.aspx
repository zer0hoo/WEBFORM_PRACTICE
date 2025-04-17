<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="CachingWebApp.Default2" %>

<%@ Register src="DemoUserControl.ascx" tagname="DemoUserControl" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="Default.aspx">Default.aspx</a><br />
            <br />
            <uc1:DemoUserControl ID="DemoUserControl1" runat="server" />
        </div>
    </form>
</body>
</html>
