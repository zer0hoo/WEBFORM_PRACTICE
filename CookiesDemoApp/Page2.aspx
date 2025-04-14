<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="CookiesDemoApp.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Please enter your Qualification: <asp:TextBox ID="txtQualificadtion" runat="server"></asp:TextBox><br />
            Please enter your Country: <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnNext" runat="server" Text="Finish" OnClick="btnNext_Click" />
        </div>
    </form>
</body>
</html>
