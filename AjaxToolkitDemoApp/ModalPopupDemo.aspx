<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalPopupDemo.aspx.cs" Inherits="AjaxToolkitDemoApp.ModalPopupDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="Wheat">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                This is on modal popup;
                <br />
                <asp:Button ID="Button1" runat="server" Text="btnOK" />
            </asp:Panel>
            <asp:Button ID="btnShowPopup" runat="server" Text="Show Popup" />
        </div>
    </form>
</body>
</html>
