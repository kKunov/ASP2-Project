<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tShirts.aspx.cs" Inherits="tShirts" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainMenu" Runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div class="container-fluid">

        <div class="row tShirtRow">
            <div class="col-xs-12">
                <h3 <%--class="text-centered"--%>>
                    tShirts Catalog:
                </h3>
                   
                <asp:Button ID="addNewShirt" runat="server" Text="Add tShirt" CssClass="btn btn-primary pull-right in-header-line" OnClick="addNewShirt_Click" />
            </div>
            <div class="col-xs-12">
                <div class="row margin-bottom">
                    <div class="col-xs-3 ">Maker</div>
                    <div class="col-xs-3 ">Model</div>
                    <div class="col-xs-2 ">Color</div>
                    <div class="col-xs-4 ">Colection Year</div>
                </div>

                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="sdstShirts">
                    <ItemTemplate>
                        <div class="row rounded margin-bottom">
                            <div class="col-xs-3" data-model='<%# Eval("maker") %>'><%# Eval("maker") %></div>
                            <div class="col-xs-3" data-model='<%# Eval("model") %>'><%# Eval("model") %></div>
                            <div class="col-xs-2" data-model='<%# Eval("color") %>'><%# Eval("color") %></div>
                            <div class="col-xs-2" data-model='<%# Eval("colectionYear") %>'><%# Eval("colectionYear") %></div>
                            <div class="col-xs-2">
                                <asp:Button ID="deleteBtn" runat="server" Text="Delete" CssClass="btn btn-danger pull-right margin-left" CommandArgument='<%# Eval("tshirtId") %>' OnClick="deleteBtn_Click"/>
                                <asp:Button ID="editBtn" runat="server" Text="Edit" CssClass="btn btn-default pull-right" CommandArgument='<%# Eval("tshirtId") %>' OnClick="editBtn_Click"/>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

        <asp:SqlDataSource ConnectionString='<%$ ConnectionStrings:DB %>' ID="sdstShirts" SelectCommand="SELECT * FROM [tShirts] ORDER BY tshirtId desc" runat="server"></asp:SqlDataSource>

    </div>
</asp:Content>

