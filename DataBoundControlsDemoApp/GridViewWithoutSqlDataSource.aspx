<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewWithoutSqlDataSource.aspx.cs" Inherits="DataBoundControlsDemoApp.GridViewWithoutSqlDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sdsEmp" runat="server"
                ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                DeleteCommand="DELETE FROM [Emp] WHERE [EmpId] = @EmpId" 
                InsertCommand="INSERT INTO [Emp] ([EmpId], [EmpName], [EmpSalary]) VALUES (@EmpId, @EmpName, @EmpSalary)" 
                SelectCommand="SELECT * FROM [Emp]" 
                UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gvEmp" runat="server" DataKeyNames="EmpId" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="true" OnSorting="gvEmp_Sorting" OnRowCancelingEdit="gvEmp_RowCancelingEdit" OnRowEditing="gvEmp_RowEditing" OnRowUpdating="gvEmp_RowUpdating">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="EmpId" HeaderText="emp Id" ReadOnly="true" SortExpression="EmpId" /> <%-- label로 랜더링 됨 --%>
                    <asp:BoundField DataField="EmpName" HeaderText="emp name" ReadOnly="true" SortExpression="EmpName" />
                    <asp:BoundField DataField="EmpSalary" HeaderText="emp salary" ReadOnly="true" SortExpression="EmpSalary" />
                    <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" />
                    <asp:CommandField ShowSelectButton="true" ShowDeleteButton="true" ShowEditButton="true" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
