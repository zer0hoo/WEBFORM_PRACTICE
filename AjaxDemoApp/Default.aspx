﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AjaxDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <br />
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    Please wait...
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:TextBox runat="server" ID="txt1"></asp:TextBox>
                    <asp:DropDownList ID="ddl1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                        <asp:ListItem>One</asp:ListItem>
                        <asp:ListItem>Two</asp:ListItem>
                        <asp:ListItem>Three</asp:ListItem>
                        <asp:ListItem>Four</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddl4" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                        <asp:ListItem>One</asp:ListItem>
                        <asp:ListItem>Two</asp:ListItem>
                        <asp:ListItem>Three</asp:ListItem>
                        <asp:ListItem>Four</asp:ListItem>
                    </asp:DropDownList>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddl3" EventName="SelectedIndexChanged" />
                    <asp:AsyncPostBackTrigger ControlID="ddl4" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="ddl2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                        <asp:ListItem>One</asp:ListItem>
                        <asp:ListItem>Two</asp:ListItem>
                        <asp:ListItem>Three</asp:ListItem>
                        <asp:ListItem>Four</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:DropDownList ID="ddl3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl1_SelectedIndexChanged">
                <asp:ListItem>One</asp:ListItem>
                <asp:ListItem>Two</asp:ListItem>
                <asp:ListItem>Three</asp:ListItem>
                <asp:ListItem>Four</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txt3" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
    </form>
</body>
</html>

