<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MainMenu.ascx.cs" Inherits="moduls_MainMenu" %>

<nav class="navbar navbar-inverse" role="navigation">
    <div class="collapse navbar-collapse"> 
        <ul class="nav navbar-nav">
            <li>
                <a href="~/Default.aspx" runat="server"> 
                    Home
                </a>
            </li>
            <li>
                <a href="~/tShirts.aspx" runat="server">tShirts</a>
            </li>
            <li>
                <a href="~/Shorts.aspx" runat="server">Shorts</a>
            </li>
        </ul>
    </div>
</nav>