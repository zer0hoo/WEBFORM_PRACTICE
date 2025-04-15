<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProvidersDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="Secured/Page1.aspx">Secured/Page1.aspx</a>
            <a href="Secured/Page2.aspx">Secured/Page2.aspx</a>
            <br />
            <br />

            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    Please
                    <asp:LoginStatus ID="LoginStatus1" runat="server" />
                </AnonymousTemplate>
                <LoggedInTemplate>
                    Welcome
                    <asp:LoginName ID="LoginName1" runat="server" />
                    <asp:LoginStatus ID="LoginStatus1" runat="server" />
                </LoggedInTemplate>
            </asp:LoginView>
        </div>
    </form>
</body>
</html>
