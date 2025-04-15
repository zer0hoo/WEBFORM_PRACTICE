<%@ Page Trace="true"  TraceMode="SortByTime" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .aspNetDisabled {
            color: gray;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        K1: <%= System.Configuration.ConfigurationManager.AppSettings["k1"] %>
<br />
        K2: <%= System.Configuration.ConfigurationManager.AppSettings["k2"] %>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Enabled="False"></asp:Label>
       <br />
        <br />
        <asp:Button ID="btnThrowException" runat="server" OnClick="btnThrowException_Click" Text="Throw Exception" />
        <br />
            <a href="Monitor.aspx">Monitor</a>
        <br />
            <a href="Mouse.aspx">Mouse</a>
        <br />
            <a href="Keyboard.aspx">Keyboard</a>
        <br />
         <br />
        <asp:TextBox ID="txtDemo" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
        <br />
        <br />
        <asp:Literal ID="ltrDemo" runat="server" Mode="Encode"></asp:Literal>
    </div>
    </form>
</body>
</html>
