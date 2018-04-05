<%@ Page Title="Product Searcher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductSearcher.aspx.cs" Inherits="Express_Pizzaria.ProductSearcher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="/Content/ProductSearcher.css">

    <!DOCTYPE html>

    <div class="Content" id="Box">
        <div class="TitleSearchGrid">
            <div class="Title">
                <h1 id="bg-secondary">Product searcher</h1>
            </div>
            <div class="Search">
                <p class="auto-style1">
                    <asp:TextBox ID="SearchInput" runat="server">Bacon</asp:TextBox>
                    <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
                </p>
            </div>
        </div>
        <div class="SortByShow">
            <asp:Button ID="ShowAll" runat="server" OnClick="Button1_Click" Text="Show all" />
            <asp:Label ID="Label2" runat="server" Text="Sort By:"></asp:Label>
            <asp:DropDownList ID="SortByDropDown" runat="server">
                <asp:ListItem Value="ID">ID</asp:ListItem>
                <asp:ListItem Value="Name"></asp:ListItem>
                <asp:ListItem Value="Price"></asp:ListItem>
                <asp:ListItem Value="Varient"></asp:ListItem>
            </asp:DropDownList>
        </div>

            <p id="Label1" class="auto-style1">
                <asp:Label ID="ErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            </p>
            <asp:Table runat="server" ID="ProductTable" CssClass="table" Width="100%">
                <asp:TableHeaderRow>
                    <asp:TableCell>ID</asp:TableCell>
                    <asp:TableCell>Name</asp:TableCell>
                    <asp:TableCell>Price</asp:TableCell>
                    <asp:TableCell>Type</asp:TableCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                </asp:TableRow>
            </asp:Table>
    </div>


</asp:Content>