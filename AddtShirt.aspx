<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddtShirt.aspx.cs" Inherits="AddtShirt" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainMenu" Runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h2>Add tShirt:</h2>
                <asp:Label runat="server" Text="Maker:"></asp:Label>
                <asp:TextBox runat="server" CssClass="form-control margin-bottom" ID="tbMaker" MaxLength="50" ></asp:TextBox>

                <asp:Label runat="server" Text="Model:"></asp:Label>
                <asp:TextBox runat="server" CssClass="form-control margin-bottom" ID="tbModel" MaxLength="30" ></asp:TextBox>

                <asp:Label runat="server" Text="Color:"></asp:Label>
                <asp:TextBox runat="server" CssClass="form-control margin-bottom" ID="tbColor" MaxLength="20" ></asp:TextBox>

                <asp:Label runat="server" Text="Colection Year:"></asp:Label>
                <asp:TextBox runat="server" CssClass="form-control margin-bottom" ID="tbYear" MaxLength="4" ></asp:TextBox>

                <asp:Label runat="server" Text="Your E-mail:"></asp:Label>
                <asp:TextBox runat="server" CssClass="form-control margin-bottom" ID="tbMail" MaxLength="256" AutoCompleteType="Email" ></asp:TextBox>

                <asp:Button
                    ID="addBtn"
                    runat="server"
                    Text="Add"
                    CssClass="btn btn-primary pull-right margin-left"
                    OnClick="addBtn_Click" />
                <asp:Button
                    ID="cancelBtn"
                    runat="server"
                    Text="Cancel"
                    CssClass="btn btn-default pull-right"
                    OnClick="cancelBtn_Click" />
            </div>
        </div>
    </div>
</asp:Content>

