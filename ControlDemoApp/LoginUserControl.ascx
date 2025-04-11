<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginUserControl.ascx.cs" Inherits="ControlDemoApp.LoginUserControl" %>

<table" style="background-color:<%=BackgroundColor%>">
    <tr>
        <asp:Label ID="lblError" runat="server"></asp:Label>
        <br />
    </tr>
    <tr>
        <td><asp:Literal ID="ltrUserName" runat="server">Username</asp:Literal></td>
        <td>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <br />
        </td>
    </tr>
    <tr>
        <td><asp:Literal ID="ltrPassword" runat="server">Username</asp:Literal></td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </td>
    </tr>
</table>
