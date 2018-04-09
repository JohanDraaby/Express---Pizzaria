
<%@ Page Title="Product Searcher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductSearcher.aspx.cs" Inherits="Express_Pizzaria.ProductSearcher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="/Content/ProductSearcher.css">

    <!DOCTYPE html>

    <div class="Content Box">
        <div class="TitleSearchGrid">
            <div class="Title">
                <h1 id="bg-secondary">Product searcher</h1>
            </div>
            <div class="Search">
                <p class="auto-style1">
                    <p>Ingredients</p><asp:DropDownList ID="SearchInput" runat="server">
                        <asp:ListItem Value="Bacon">Bacon</asp:ListItem>
                        <asp:ListItem Value="Cheese">Cheese</asp:ListItem>
                        <asp:ListItem>Ham</asp:ListItem>
                        <asp:ListItem>Tomatoe Sauce</asp:ListItem>
                        <asp:ListItem>Pineapple</asp:ListItem>
                        <asp:ListItem>Pepperoni</asp:ListItem>
                        <asp:ListItem>Mushroom</asp:ListItem>
                        <asp:ListItem>Garlic</asp:ListItem>
                        <asp:ListItem>Tuna</asp:ListItem>
                        <asp:ListItem>Prawns</asp:ListItem>
                        <asp:ListItem>Clamps</asp:ListItem>
                        <asp:ListItem>Gorgonzola</asp:ListItem>
                        <asp:ListItem>Air Dried Ham</asp:ListItem>
                        <asp:ListItem>Paprika</asp:ListItem>
                        <asp:ListItem>Asparagus</asp:ListItem>
                        <asp:ListItem>Onion</asp:ListItem>
                        <asp:ListItem>Olives</asp:ListItem>
                        <asp:ListItem>Meat Sauce</asp:ListItem>
                        <asp:ListItem>Shrimp</asp:ListItem>
                        <asp:ListItem>Eggs</asp:ListItem>
                        <asp:ListItem>Chili</asp:ListItem>
                        <asp:ListItem>Chicken</asp:ListItem>
                        <asp:ListItem>Beef Fillet</asp:ListItem>
                        <asp:ListItem>Salad</asp:ListItem>
                        <asp:ListItem>Dressing</asp:ListItem>
                        <asp:ListItem>Kebab</asp:ListItem>
                        <asp:ListItem>Turkish Pepperoni</asp:ListItem>
                        <asp:ListItem>Sucuk</asp:ListItem>
                        <asp:ListItem>Peppers</asp:ListItem>
                        <asp:ListItem>Meatballs</asp:ListItem>
                        <asp:ListItem>Spaghetti</asp:ListItem>
                        <asp:ListItem>Jalapenos</asp:ListItem>
                        <asp:ListItem>Cream Fraiche</asp:ListItem>
                        <asp:ListItem>Garlic oil</asp:ListItem>
                        <asp:ListItem>Cocktail Sausages</asp:ListItem>
                        <asp:ListItem>Tomato</asp:ListItem>
                        <asp:ListItem>Cucumber</asp:ListItem>
                        <asp:ListItem>Red Dressing</asp:ListItem>
                        <asp:ListItem>Fish</asp:ListItem>
                        <asp:ListItem>Beef</asp:ListItem>
                    </asp:DropDownList>
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