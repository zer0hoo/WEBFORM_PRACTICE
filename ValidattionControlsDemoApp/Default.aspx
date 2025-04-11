<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidattionControlsDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="Label1" runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox ID="txtFirstNAme" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstNAme" ErrorMessage="Plz provide first name">Required</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name: "></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Plz provide last name">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Education:
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="0">Under Graduate</asp:ListItem>
                <asp:ListItem Value="1">Graduate</asp:ListItem>
                <asp:ListItem Value="2">Post Graduate</asp:ListItem>
                <asp:ListItem Value="-1">(Select One)</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
