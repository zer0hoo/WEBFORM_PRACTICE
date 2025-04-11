<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StateManagementDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Instance Counter: <asp:Label ID="lblCounter" runat="server" Text=""></asp:Label><br />
            Shared Counter: <asp:Label ID="lblSharedCounter" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtDemo" runat="server"></asp:TextBox>
            <asp:Button ID="btnSumbit" runat="server" OnClick="btnSumbit_Click" Text="Submit" />
            <br />
            <br />
            <a href="Default2.aspx">Default2.aspx</a>
        </div>
    </form>
</body>
</html>
