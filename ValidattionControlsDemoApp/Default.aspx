﻿<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidattionControlsDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div aria-atomic="True" aria-multiline="False">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
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
            <asp:DropDownList ID="ddlEducation" runat="server">
                <asp:ListItem Value="-1">(Select One)</asp:ListItem>
                <asp:ListItem Value="0">Under Graduate</asp:ListItem>
                <asp:ListItem Value="1">Graduate</asp:ListItem>
                <asp:ListItem Value="2">Post Graduate</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlEducation" ErrorMessage="Plz select education" InitialValue="-1" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Password:
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Plz provide password" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Confirm Password:
            <asp:TextBox ID="txtConfirmpassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmpassword" Display="Dynamic" ErrorMessage="Plz ensure that the value in password and confirm password are same">Invalid</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtConfirmpassword" ErrorMessage="Plz provide confirm password" SetFocusOnError="True" Display="Dynamic">Required</asp:RequiredFieldValidator>
            <br />
            <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
