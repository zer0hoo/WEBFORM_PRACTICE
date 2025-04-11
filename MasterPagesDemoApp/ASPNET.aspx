<%@ Page Title="ASP.NET Course Details" Language="C#" MasterPageFile="~/CoursesMasterPage.Master"
    AutoEventWireup="true" CodeBehind="ASPNET.aspx.cs" Inherits="MasterPagesDemoApp.ASPNET" %> 
<%@ MasterType VirtualPath="~/CoursesMasterPage.Master" %><%--  자식 페이지에서 master page의 요소에 접근하기 위한 설정 --%>

<asp:Content runat="server" ContentPlaceHolderID="cpdCourseDetails">
    ASP.NET Course
    <p>
        Following are the details of ASP.NET Course:

        ...
    </p>
    <p>
        &nbsp;</p>
    <p>
        <img alt="Happy" class="auto-style6" src="Images/k.jpg" /></p>
    <p>
        <asp:Button ID="btnDemo" runat="server" OnClick="btnDemo_Click" Text="Demo" />
    </p>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="cphStartDate">
    15th March
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style6 {
            width: 77px;
            height: 83px;
        }
    </style>
</asp:Content>

