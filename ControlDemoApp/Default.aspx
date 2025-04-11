<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ControlDemoApp.Default" %>

<%@ Register Src="~/LoginUserControl.ascx" TagPrefix="uc1" TagName="LoginUserControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to My Website...
            <br />
            <uc1:LoginUserControl runat="server" id="LoginUserControl" BackgroundColor="yellow"
                InvalidUserMessage="Username or Password are not valid"
                UsernameLabel="Login ID" PasswordLabel="Pwd"
                OnAuthenticated="uclogin_Authenticated" /> <!-- On 접두사를 이용해 사용자 정의 컨트롤에서 선언한 이벤트 핸들러 연결, Authenticated 이벤트 발생 시 핸들러로 uclogin_ ~ 함수 실행 -->
        </div>
    </form>
</body>
</html>
