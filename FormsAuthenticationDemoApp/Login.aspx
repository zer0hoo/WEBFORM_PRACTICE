<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FormsAuthenticationDemoApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div><asp:Label runat="server" ID="lblError" ForeColor="Red" /></div> 
            Login: <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox><br /> 
            Password: <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br /> 
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /> 
            <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" /><br />
        </div>
    </form>
</body>
</html>
