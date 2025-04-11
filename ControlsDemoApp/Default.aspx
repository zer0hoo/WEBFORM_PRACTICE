<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ControlsDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- 각 textBox와 button을 panel로 감싸고 DefaultButton 옵션 사용해서, 포커스 되는 텍스트 박스에 맞는 버튼이 포커스되게 설정-->
            <asp:Panel ID="Panel1" runat="server" DefaultButton="btnDelete">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <!-- OnClienClick: 서버로 전송되는 동작이 아닌, 클라이언트에서만 일어나야 할 동작을 정의 -->
                <asp:Button ID="btnDelete" runat="server"
                    OnClientClick="alert('btn1')"
                    Text="Button1" OnClick="btnDelete_Click" />
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server" DefaultButton="Button1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server"
                    OnClientClick="alert('btn2')"
                    Text="Button2" OnClick="btnDelete_Click" />
                <br />
            </asp:Panel>
        </div>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnCommand="btnAdd_Command" CommandName="Add" /> <!-- 버튼 입력 시 commandName으로 파라미터 전달 -->
        <asp:Button ID="btnEdit" runat="server" Text="Edit" OnCommand="btnAdd_Command" CommandName="Edit" />
        <asp:Button ID="btnDel" runat="server" Text="Del" OnCommand="btnAdd_Command" CommandName="Del" />
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/k.jpg" />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/k.jpg"  />
            <!-- hyperlink에 imageURL 속성 넣어주면 a 태그 안에 img 태그 들어간 것으로 표시됨 -->
            <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/Images/k.jpg" NavigateUrl="~/Default2.aspx"></asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default2.aspx">Default2</asp:HyperLink>
&nbsp;
        <!-- link button은 html에서는 a태그로 표현되지만 onclick 이벤트를 통해 함수 정의해서 제출 역할을 수행할 수 있음-->
        <asp:LinkButton ID="lbtn" runat="server" OnClick="lbtn_Click" OnClientClick="return confirm('Are you sure?')">Submit</asp:LinkButton> <!-- link button은 hyperlink와 다르게 제출도 수행함 -->
    </form>
</body>
</html>
