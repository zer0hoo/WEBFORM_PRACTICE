<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginCookiesDemoApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please Login here...<br />
            <div><asp:Label ID="lblError" runat="server" Text=""></asp:Label> </div>
            Username:<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox> <br />
            Password:<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox> <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <asp:CheckBox ID="chkRemember" runat="server" Text="Remember my u/p on this machine" />
        </div>
    </form>
</body>
</html>
