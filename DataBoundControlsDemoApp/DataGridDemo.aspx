<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataGridDemo.aspx.cs" Inherits="DataBoundControlsDemoApp.DataGridDemo" %>

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
                InsertCommand="INSERT INTO [Emp] ([EmpId], [EmpName], [EmpSalary], [IsActive], [CreatedDate]) VALUES (@EmpId, @EmpName, @EmpSalary, @IsActive, @CreatedDate)" 
                SelectCommand="SELECT * FROM [Emp]" 
                UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary, [IsActive]=@IsActive, [UpdatedDate]=@UpdatedDate WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="UpdatedDate" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="sdsEmpFiltered" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" 
                DeleteCommand="DELETE FROM [Emp] WHERE [EmpId] = @EmpId" 
                InsertCommand="INSERT INTO [Emp] ([EmpId], [EmpName], [EmpSalary], [IsActive], [CreatedDate]) VALUES (@EmpId, @EmpName, @EmpSalary, @IsActive, @CreatedDate)" 
                SelectCommand="SELECT [EmpId], [EmpName], [EmpSalary], [IsActive] FROM [Emp] WHERE ([EmpId] = @EmpId)" 
                UpdateCommand="UPDATE [Emp] SET [EmpName] = @EmpName, [EmpSalary] = @EmpSalary, [IsActive]=@IsActive, [UpdatedDate]=@UpdatedDate WHERE [EmpId] = @EmpId">
                <DeleteParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EmpId" Type="Int32" />
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="CreatedDate" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="gvEmp" DefaultValue="-1" Name="EmpId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EmpName" Type="String" />
                    <asp:Parameter Name="EmpSalary" Type="Decimal" />
                    <asp:Parameter Name="IsActive" Type="Boolean" />
                    <asp:Parameter Name="EmpId" Type="Int32" />
                    <asp:Parameter Name="UpdatedDate" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="gvEmp" runat="server" DataKeyNames="EmpId" DataSourceID="sdsEmp" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" OnSelectedIndexChanged="gvEmp_SelectedIndexChanged" OnRowCommand="gvEmp_RowCommand" OnRowUpdating="gvEmp_RowUpdating" OnRowDataBound="gvEmp_RowDataBound">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="EmpId" HeaderText="emp Id" ReadOnly="true" SortExpression="EmpId" /> <%-- label로 랜더링 됨 --%>
                    <asp:TemplateField HeaderText="emp name" SortExpression="EmpName">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmpName" runat="server" Text='<%# Bind("EmpName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmpName" ControlToValidate="txtEmpName" runat="server"
                                ErrorMessage="Plz enter name" Text="Required" Display="Dynamic" ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("EmpName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="EmpSalary" HeaderText="emp salary" ReadOnly="true" SortExpression="EmpSalary" />
                    <asp:TemplateField HeaderText="IsActive" SortExpression="IsActive">
                        <EditItemTemplate>
                            <asp:CheckBox ID="chkIsActive" runat="server" Checked='<%# IsEmpActive(Eval("IsActive")) %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblIsActive" runat="server" Text='<%# GetYesOrNo(Eval("IsActive")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowSelectButton="true" ShowDeleteButton="True" ShowEditButton="True" ButtonType="Link" />
                    <asp:ButtonField ButtonType="Link" Text="Email" CommandName="email" />
                    <asp:ButtonField ButtonType="Link" Text="SMS" CommandName="sms" />
                    <asp:HyperLinkField DataNavigateUrlFields="EmpId,EmpName" Target="_blank" DataNavigateUrlFormatstring="~/EmpDetails.aspx?EmpId={0}&Empname={1}" Text="Details" />
                    <asp:ImageField DataImageUrlField="EmpId" DataImageUrlFormatString="~/EmpImages/{0}.jpeg" ControlStyle-Width="50">
<ControlStyle Width="50px"></ControlStyle>
                    </asp:ImageField>
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
            <br />
            <asp:DetailsView ID="dvEmp" runat="server" CellPadding="4" DataSourceID="sdsEmpFiltered" ForeColor="#333333" GridLines="None" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="EmpId" OnItemInserted="dvEmp_ItemInserted" OnItemUpdated="dvEmp_ItemUpdated" OnModeChanged="dvEmp_ModeChanged" OnItemInserting="dvEmp_ItemInserting" OnItemUpdating="dvEmp_ItemUpdating" >
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="True" SortExpression="EmpId" />
                    <asp:BoundField DataField="EmpName" HeaderText="EmpName" SortExpression="EmpName" />
                    <asp:BoundField DataField="EmpSalary" HeaderText="EmpSalary" SortExpression="EmpSalary" />
                    <asp:TemplateField HeaderText="IsActive" SortExpression="IsActive">
                        <EditItemTemplate>
                            <asp:CheckBox ID="chkIsActive" runat="server" Checked='<%# IsEmpActive(Eval("IsActive")) %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblIsActive" runat="server" Text='<%# GetYesOrNo(Eval("IsActive")) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" Text="Delete" OnClientClick="return confirm('Are you sure?')" CommandName="delete" ></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
        </div>
    </form>
</body>
</html>
