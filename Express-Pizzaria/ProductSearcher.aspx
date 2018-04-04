<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductSearcher.aspx.cs" Inherits="Express_Pizzaria.ProductSearcher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Express-Pizza - Product Searcher</title>
    <link rel="stylesheet" type="text/css" href="ProductSearcher.css">
</head>
<body>
    <div class="Content">
        <form id="form1" runat="server">
            <p class="auto-style1">
                Product searcher</p>
            <div class="Search">
            <p class="auto-style1">
                <asp:TextBox ID="SearchInput" runat="server">Bacon</asp:TextBox>
                <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
            </p>
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
        </form>
    </div>
</body>
</html>
