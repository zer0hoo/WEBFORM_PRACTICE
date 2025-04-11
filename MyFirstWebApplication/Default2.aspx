<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="MyFirstWebApplication.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblDemo" runat="server" Text="This is Demo Text"></asp:Label>
            <br />
            <br />
            <asp:RadioButton ID="rbnRed" runat="server" GroupName="color" Text="Red" OnCheckedChanged="rbnColor_CheckedChanged" AutoPostBack="True" /> <!-- submit 버튼으로 동작하는 것이 아닌, radio 버튼 클릭으로 동작하게끔 설정(속성 -> AutoPostBack) -->
            <!-- AutoPostBack을 true로 설정하고 브라우저에서 소스를 보면 생기는 onclick
                => onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;rbnRed\&#39;,\&#39;\&#39;)&#39;, 0)" -> 문자 변환
                => onclick="setTimeout("__doPostBack("rbnRed","")", 0)" -> setTimeout 메서드 껍데기 제거(, 0 파라미터는 즉시 실행하라는 의미임)
                => onclick="__doPostBack("rbnRed", "") -->
            <asp:RadioButton ID="rbnGreen" runat="server" GroupName="color" Text="Green" OnCheckedChanged="rbnColor_CheckedChanged" AutoPostBack="True"/>
            <asp:RadioButton ID="rbnBlue" runat="server" GroupName="color" Text="Blue" OnCheckedChanged="rbnColor_CheckedChanged" AutoPostBack="True"/>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </form>
</body>
</html>
