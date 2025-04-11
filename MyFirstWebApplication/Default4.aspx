<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default4.aspx.cs" Inherits="MyFirstWebApplication.Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:ListBox ID="lstLeft" runat="server" SelectionMode="Multiple">
                            <asp:ListItem value="1">One</asp:ListItem>
                            <asp:ListItem value="2">Two</asp:ListItem>
                            <asp:ListItem value="3">Three</asp:ListItem>
                            <asp:ListItem value="4">Four</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="btnMoveToRight" runat="server" Text=" &gt; " OnClick="btnMoveToRight_Click"  />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnMoveToLeft" runat="server" Text=" &lt; " OnClick="btnMoveToLeft_Click"  />
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <asp:ListBox ID="lstRight" runat="server" SelectionMode="Multiple"></asp:ListBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
