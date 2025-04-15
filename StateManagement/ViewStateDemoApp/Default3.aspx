<%@ Page Language="C#" EnableViewState="true" ViewStateMode="Disabled" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:TextBox ID="TextBox1" runat="server" ViewStateMode="Enabled"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" ViewStateMode="Inherit"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
    
    </div>
    </form>
</body>
</html>
