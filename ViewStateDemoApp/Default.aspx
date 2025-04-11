<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnNew" runat="server" Text="New" OnClick="btnNew_Click" />
        <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" Visible="False" />
    </div>
    </form>
</body>
</html>
