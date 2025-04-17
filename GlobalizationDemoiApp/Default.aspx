<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GlobalizationDemoiApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList AutoPostBack="true" ID="ddlCulture" runat="server"
                OnSelectedIndexChanged="ddlCulture_SelectedIndexChanged">
                <asp:ListItem Value="en-US" Text="English"></asp:ListItem>
                <asp:ListItem Value="de-AT" Text="German"></asp:ListItem>
                <asp:ListItem Value="fr-Be" Text="French"></asp:ListItem>
                <asp:ListItem Value="hi-IN" Text="Hindi"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />

            <asp:Label ID="lblCompanyName" runat="server" 
                Text="<%$ Resources:Settings, lblCompanyName %>"></asp:Label> <%-- global --%>
            <br />
            <br />
            <asp:Label ID="lblRealName" runat="server"
                ForeColor="<%$ Resources:lblRealNameForeColorKey %>" 
                Text="<%$ Resources:lblRealNameTextKey %>"></asp:Label> <%-- local --%>

            <br />
            <br />
            <asp:Label meta:ResourceKey="lblAddressKey" ID="lblAddress" runat="server"/>
            <br />
            <br />
            <asp:Label ID="lblRealName1" runat="server" ></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblAmount" runat="server" Text="lblAmount"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblDate" runat="server" Text="lblDate"></asp:Label>
        </div>
    </form>
</body>
</html>
