<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EdittShirts.aspx.cs" Inherits="EdittShirts" %>

<%@ Register TagPrefix="my" TagName="MainMenu" Src="~/moduls/MainMenu.ascx"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainMenu" Runat="Server">
    <my:MainMenu ID="MainMenu" runat="server" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <asp:FormView ID="fv" runat="server" DataSourceID="SqlDataSource1" DefaultMode="ReadOnly" CssClass="max-width">
                    <ItemTemplate>
                        <h2>Edit tShirt:</h2>
                        <asp:Label runat="server" Text="Maker:"></asp:Label>
                        <asp:TextBox runat="server" CssClass="form-control margin-bottom" ID="tbMaker" MaxLength="50" Text='<%# Eval("maker") %>'></asp:TextBox>

                        <asp:Label runat="server" Text="Model:"></asp:Label>
                        <asp:TextBox runat="server" CssClass="form-control margin-bottom" ID="tbModel" MaxLength="30" Text='<%# Eval("model") %>'></asp:TextBox>

                        <asp:Label runat="server" Text="Color:"></asp:Label>
                        <asp:TextBox runat="server" CssClass="form-control margin-bottom" ID="tbColor" MaxLength="20" Text='<%# Eval("color") %>'></asp:TextBox>

                        <asp:Label runat="server" Text="Colection Year:"></asp:Label>
                        <asp:TextBox runat="server" CssClass="form-control margin-bottom" ID="tbYear" MaxLength="4" Text='<%# Eval("colectionYear") %>'></asp:TextBox>

                        <asp:Button
                            ID="editBtn"
                            runat="server"
                            Text="Edit"
                            CssClass="btn btn-primary pull-right margin-left"
                            OnClick="editBtn_Click" />
                        <asp:Button
                            ID="cancelBtn"
                            runat="server"
                            Text="Cancel"
                            CssClass="btn btn-default pull-right"
                            OnClick="cancelBtn_Click" />
                    </ItemTemplate>
                </asp:FormView>
            </div>
        </div>
        <asp:SqlDataSource
            runat="server"
            ID="SqlDataSource1"
            ConnectionString='<%$ ConnectionStrings:DB %>'
            SelectCommand="SELECT * FROM [tshirts] WHERE ([tshirtId] = @id)">
            <SelectParameters>
                <asp:SessionParameter SessionField="tshirt_id" Name="id"></asp:SessionParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div> <!-- container-fluid -->
</asp:Content>

