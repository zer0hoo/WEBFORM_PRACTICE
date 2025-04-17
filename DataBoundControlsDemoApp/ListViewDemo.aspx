<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewDemo.aspx.cs" Inherits="DataBoundControlsDemoApp.ListViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sdsEmp" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [Emp] WHERE [EmpId] = @EmpId" InsertCommand="INSERT INTO [Emp] ([EmpName], [EmpId], [EmpSalary], [IsActive]) VALUES (@EmpName, @EmpId, @EmpSalary, @IsActive)" SelectCommand="SELECT [EmpName], [EmpId], [EmpSalary], [IsActive] FROM [Emp]" UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary, [IsActive] = @IsActive WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmpId" DataSourceID="sdsEmp" GroupItemCount="3">
                <AlternatingItemTemplate>
                    <td runat="server" style="">EmpName:
                        <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                        <br />
                        EmpId:
                        <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        <br />
                        EmpSalary:
                        <asp:Label ID="EmpSalaryLabel" runat="server" Text='<%# Eval("EmpSalary") %>' />
                        <br />
                        <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false" Text="IsActive" />
                        <br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="">EmpName:
                        <asp:TextBox ID="EmpNameTextBox" runat="server" Text='<%# Bind("EmpName") %>' />
                        <br />
                        EmpId:
                        <asp:Label ID="EmpIdLabel1" runat="server" Text='<%# Eval("EmpId") %>' />
                        <br />
                        EmpSalary:
                        <asp:TextBox ID="EmpSalaryTextBox" runat="server" Text='<%# Bind("EmpSalary") %>' />
                        <br />
                        <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' Text="IsActive" />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="업데이트" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="취소" />
                        <br />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>데이터가 반환되지 않았습니다.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">EmpName:
                        <asp:TextBox ID="EmpNameTextBox" runat="server" Text='<%# Bind("EmpName") %>' />
                        <br />
                        EmpId:
                        <asp:TextBox ID="EmpIdTextBox" runat="server" Text='<%# Bind("EmpId") %>' />
                        <br />
                        EmpSalary:
                        <asp:TextBox ID="EmpSalaryTextBox" runat="server" Text='<%# Bind("EmpSalary") %>' />
                        <br />
                        <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' Text="IsActive" />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="삽입" />
                        <br />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="지우기" />
                        <br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="">EmpName:
                        <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                        <br />
                        EmpId:
                        <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        <br />
                        EmpSalary:
                        <asp:Label ID="EmpSalaryLabel" runat="server" Text='<%# Eval("EmpSalary") %>' />
                        <br />
                        <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false" Text="IsActive" />
                        <br />
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="">EmpName:
                        <asp:Label ID="EmpNameLabel" runat="server" Text='<%# Eval("EmpName") %>' />
                        <br />
                        EmpId:
                        <asp:Label ID="EmpIdLabel" runat="server" Text='<%# Eval("EmpId") %>' />
                        <br />
                        EmpSalary:
                        <asp:Label ID="EmpSalaryLabel" runat="server" Text='<%# Eval("EmpSalary") %>' />
                        <br />
                        <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Eval("IsActive") %>' Enabled="false" Text="IsActive" />
                        <br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
