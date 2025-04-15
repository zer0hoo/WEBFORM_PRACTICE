<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="CookiesDemoApp.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter your Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            Please enter your Age: <asp:TextBox ID="txtAge" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnNext" runat="server" Text="Next..." OnClick="btnNext_Click" />
        </div>
    </form>
</body>
</html>
