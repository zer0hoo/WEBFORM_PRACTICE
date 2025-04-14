<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SessionsDemoApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Session Counter: <asp:Label ID="lblCounter" runat="server" Text="Label"></asp:Label>
            <br />
            Application Counter: <asp:Label ID="lblApplicationCounter" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="lblLoginStatus" runat="server" Text=""></asp:Label>
            <asp:LinkButton ID="lnkLogin" runat="server" OnClick="lnkLogin_Click">Login</asp:LinkButton>
        </div>
    </form>
</body>
</html>
