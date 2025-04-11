<!-- Theme 옵션으로 적용하고 싶은 테마 적용 -->
<%@ Page Language="C#" AutoEventWireup="true" Theme="테마1"
    CodeBehind="Default.aspx.cs" Inherits="ThemesDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="This is Label"></asp:Label>
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="This is Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="This is Label" SkinID="RedLabel"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="This is Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="This is Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="This is Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="This is Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="This is Label"></asp:Label>
        </p>
    </form>
</body>
</html>
