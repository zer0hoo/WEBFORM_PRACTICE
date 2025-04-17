<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DemoUserControl.ascx.cs" Inherits="CachingWebApp.DemoUserControl" %>

<%@ OutputCache Duration="20" VaryByParam="none" Shared="False" %>

FromUC: <%= DateTime.Now.ToLongTimeString() %>