<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HiddenFieldDemo.aspx.cs" Inherits="HiddenFieldDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function InitializeClientTime() {
            var dt = new Date();
            t = dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
            document.forms[0].hdnTime.value = t
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HiddenField ID="hdnTime" runat="server" />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" OnClientClick="InitializeClientTime()" Text="Submit" />
    
    </div>
    </form>
</body>
</html>
