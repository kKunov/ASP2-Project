<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx" %>

<asp:Content ID="ContentMenu" ContentPlaceHolderID="MainMenu" Runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <h1 class="text-center">University Project - ASP 2</h1>

    <p class="text-center dafault-page-p">Made by:</p>
    <ul class="default-page-ul" >
        <li>Калоян Кунов - 2275</li>
        <li>Денислав Кънев - 2281</li>
    </ul>
</asp:Content>