<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CookieDictionaryWebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Sub Key: <asp:TextBox ID="txtSubKey" runat="server" /><br /> 
            Value: <asp:TextBox ID="txtValue" runat="server" /><br />
            <asp:Button ID="btnAddToDictionary" runat="server" OnClick="btnAddToDictionary_Click" Text="Add To Dictionary"/>
            <asp:Button ID="btnShowDictionary" runat="server" OnClick="btnShowDictionary_Click" Text="Show Dictionary" />
            <br />
            <asp:Label ID="lblValue" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
