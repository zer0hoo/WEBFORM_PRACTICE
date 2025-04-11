<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="ControlsDemoApp.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlDemo" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lst_SelectedIndexChanged">
                <asp:ListItem Text="Item1" Value="1" />
                <asp:ListItem Text="Item2" Value="2" />
                <asp:ListItem Text="Item3" Value="3" />
            </asp:DropDownList>
            <asp:ListBox Rows="6" ID="lbDemo" SelectionMode="Multiple" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lst_SelectedIndexChanged">
                <asp:ListItem Text="Item1" Value="1" />
                <asp:ListItem Text="Item2" Value="2" />
                <asp:ListItem Text="Item3" Value="3" />
            </asp:ListBox>
            <asp:CheckBoxList Rows="6" ID="cblDemo" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lst_SelectedIndexChanged"
                RepeatDirection="Horizontal" RepeatColumns="3" >
                <asp:ListItem Text="Item1" Value="1" />
                <asp:ListItem Text="Item2" Value="2" />
                <asp:ListItem Text="Item3" Value="3" />
            </asp:CheckBoxList>
            <!-- RepeatLayout Flow로 설정하면 table에 들어가는 게 아닌, lable + input태그로 표현됨 -->
            <asp:RadioButtonList Rows="6" ID="rblDemo" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lst_SelectedIndexChanged"
                RepeatDirection="Horizontal" RepeatColumns="3" RepeatLayout="Flow" >
                <asp:ListItem Text="Item1" Value="1" />
                <asp:ListItem Text="Item2" Value="2" />
                <asp:ListItem Text="Item3" Value="3" />
            </asp:RadioButtonList>
            <!-- OrderedList는 Vertical한 방향의 리스트에만 적용 가능 -->
            <asp:RadioButtonList Rows="6" ID="RadioButtonList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="lst_SelectedIndexChanged"
                RepeatDirection="Vertical" RepeatLayout="OrderedList" >
                <asp:ListItem Text="Item1" Value="1" />
                <asp:ListItem Text="Item2" Value="2" />
                <asp:ListItem Text="Item3" Value="3" />
            </asp:RadioButtonList>
        </div>
    </form>
</body>
</html>
