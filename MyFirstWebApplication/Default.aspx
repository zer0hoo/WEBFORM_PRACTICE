<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyFirstWebApplication.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title> 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSayHello" runat="server" Text="Say Hello" OnClick="btnSayHello_Click" />
        </div>
    </form>
</body>
</html>
  