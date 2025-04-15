<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="QSDemoApp.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hlnkSearch" NavigateUrl="~/Page2.aspx?search=demo" runat="server">Search</asp:HyperLink>
            <br />
            <br />
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox><asp:Button ID="btnSearch" runat="server" Text="Button" OnClick="btnSearch_Click" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
