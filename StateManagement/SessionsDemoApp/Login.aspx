<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SessionsDemoApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div><asp:Label ID="lblError" runat="server" Text=""/></div> 
            Username:<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox> <br /> 
            Password:<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox> <br /> 
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>
