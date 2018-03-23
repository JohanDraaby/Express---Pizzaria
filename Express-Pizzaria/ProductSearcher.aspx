<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductSearcher.aspx.cs" Inherits="Express_Pizzaria.ProductSearcher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p class="auto-style1">
            Product searcher</p>
        <p class="auto-style1">
            <input id="SearchInput" type="text" value="bacon" /><input id="SearchButton" type="button" value="Search" /></p>
        <p id="Label1" class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
