<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Source.aspx.cs" Inherits="RedirectiongToAnotherPageDemoApp.Source" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtDemo" runat="server" ></asp:TextBox>
            <br />
            <br />
            <a href="Target.aspx">Target.aspx</a><br />
        </div>
        <asp:Button ID="btnRedirect" runat="server" Text="Response.Redirect" OnClick="btnRedirect_Click" />
        <br />
        <br />
        <asp:Button ID="btnTransfer" runat="server" Text="Server.Transfer" OnClick="btnTransfer_Click" />
        <br />
        <br />
        <asp:Button ID="btnCrossPagePostback" runat="server" PostBackUrl="~/Target.aspx" Text="Cross-page Posting" OnClick="btnCrossPagePostback_Click" />
    </form>
</body>
</html>
