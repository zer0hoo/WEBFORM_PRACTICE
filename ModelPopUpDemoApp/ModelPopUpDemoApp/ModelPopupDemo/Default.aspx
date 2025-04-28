<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .modalBackground
        {
            background-color: Gray;
            filter: alpha(opacity=70);
            opacity: 0.7;
        }
        
        .modalPopup
        {
            background-color: White;
            border-width: 3px;
            border-style: solid;
            border-color: Gray;
            padding: 3px;
            width: 250px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:GridView ID="gvEmp" runat="server" BackColor="White" AutoGenerateColumns="false"
        DataKeyNames="PKId" Width="95%" GridLines="Both" CellPadding="3" AllowPaging="True"
        PageSize="20" OnRowCommand="gvEmp_RowCommand" 
        onrowdeleting="gvEmp_RowDeleting">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
        <AlternatingRowStyle BackColor="AliceBlue" />
        <Columns>
            <asp:TemplateField HeaderText="First Name">
                <ItemTemplate>
                    <center>
                        <asp:HiddenField runat="server" ID="hdnEmpId" Value='<%#Eval("PKId") %>' />
                        <asp:LinkButton ID="lnkEmpName" runat="server" Text='<%# Eval("FirstName") %>' CommandName="getPersonalDetails"
                            CommandArgument='<%# Eval("PKId") %>' />
                    </center>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Last Name">
                <ItemTemplate>
                    <center>
                        <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>' />
                    </center>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gender">
                <ItemTemplate>
                    <center>
                        <asp:Label ID="lblGender" runat="server" Text='<%# Eval("Gender") %>' />
                    </center>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <center>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("PKId") %>' OnClientClick="return confirm('Are you sure?');" />
                    </center>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:Button ID="btnDummy" runat="server" Style="display: none;" />
    <cc1:ModalPopupExtender ID="mpe" runat="server"  BackgroundCssClass="modalBackground"
        TargetControlID="btnDummy" PopupControlID="pnlpopup" DynamicServicePath="" Enabled="True">
    </cc1:ModalPopupExtender>
    <asp:Panel ID="pnlpopup" runat="server" Height="230px" Width="350px" CssClass="modalPopup">
        <div style="float: right">
            <asp:ImageButton ID="btncancel" runat="server" ImageUrl="~/Images/Cancel-Grey.jpg"
                Style="margin-left: 10px;" Width="20px" Height="20px" 
                onclick="btncancel_Click" /></div>
        <div style="background-color: White; height: 30px; color: #488AAD; font-size: 20px;
            padding-top: 10px">
            <b>Personal Details</b>
        </div>
        <hr />
        <br />
        <asp:SqlDataSource ID="sdsEmp" runat="server" ConnectionString="<%$ ConnectionStrings:EmpDBConnectionString %>"
            DeleteCommand="DELETE FROM [PersonalDetails] WHERE [PKId] = @PKId" InsertCommand="INSERT INTO [PersonalDetails] ([FirstName], [LastName], [Gender]) VALUES (@FirstName, @LastName, @Gender)"
            SelectCommand="SELECT * FROM [PersonalDetails] WHERE ([PKId] = @PKId)" UpdateCommand="UPDATE [PersonalDetails] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender WHERE [PKId] = @PKId">
            <DeleteParameters>
                <asp:Parameter Name="PKId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="gvEmp" Name="PKId" PropertyName="SelectedValue"
                    Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="PKId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:UpdatePanel ID="up" runat="server">
            <ContentTemplate>
                <asp:DetailsView ID="dvEmp" runat="server" Height="50px" Width="238px" AutoGenerateRows="False"
                    DataKeyNames="PKId" DataSourceID="sdsEmp" Style="margin-left: 57px;" OnItemInserted="dvEmp_ItemInserted"
                    OnItemUpdated="dvEmp_ItemUpdated" OnModeChanging="dvEmp_ModeChanging" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="PKId" HeaderText="PKId" InsertVisible="False" ReadOnly="True"
                            SortExpression="PKId" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                </asp:DetailsView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
</asp:Content>
