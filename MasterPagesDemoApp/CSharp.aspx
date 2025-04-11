<%@ Page Title="C-Sharp Course Details" Language="C#" MasterPageFile="~/CoursesMasterPage.Master"
    AutoEventWireup="true" CodeBehind="CSharp.aspx.cs" Inherits="MasterPagesDemoApp.CSharp" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <script>
        funciton foo() {

        }
    </script>
</asp:Content>

<asp:Content ID="Content1" runat="server" contentplaceholderid="cpdCourseDetails"> <!-- 이렇게 contentplaceholderid 지정 안하면 master page에서 설정한 기본 placeholder 표출됨 -->
    C# Course Details:<br />
    <p>
        Following are the details of C#
    </p>
    <p>
        <asp:Button ID="btnDemo" runat="server" Text="Demo" OnClick="btnDemo_Click" />
    </p>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="cphStartDate">
    1st March
</asp:Content>
