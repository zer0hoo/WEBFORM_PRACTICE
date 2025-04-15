<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="LoginCookiesDemoApp.Secured.Page1" %>

<%@ Register src="Logout.ascx" tagname="Logout" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            This is Page1
            <br />
            <br />
            <uc1:Logout ID="Logout1" runat="server" />
        </div>
    </form>
</body>
</html>
