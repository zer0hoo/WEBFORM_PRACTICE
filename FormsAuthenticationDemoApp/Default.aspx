<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormsAuthenticationDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome
            <asp:Literal ID="ltrUsername" runat="server"></asp:Literal>
&nbsp;to Home Page...<br />
            <br />
            <a href="Secured/Page1.aspx">Page1.aspx</a><br />
            <br />
            <a href="Secured/Page2.aspx">Page2.aspx</a><br />
            <br />
            <asp:LinkButton ID="lbtnLogin" runat="server" OnClick="lbtnLogin_Click">Login</asp:LinkButton>
            <br />
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:Button ID="btnEncrypt" runat="server" Text="Encrypt" OnClick="btnEncrypt_Click" />
    </form>
</body>
</html>
