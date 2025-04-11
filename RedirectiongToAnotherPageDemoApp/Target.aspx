<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Target.aspx.cs" Inherits="RedirectiongToAnotherPageDemoApp.Target" %>
<%@ PreviousPageType VirtualPath="~/Source.aspx" %> <!-- 이거 작성함으로써 cs파일에서 PreviousPage를 Source로 강제 캐스팅할 필요 없음-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            This is Target Page...
        </div>
    </form>
</body>
</html>
