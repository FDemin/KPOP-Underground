<%@ Page Title="Products" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="KpopUG.Dashboard.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="productsGrid" runat="server" CssClass="auto-style1">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
            <asp:BoundField DataField="Name" HeaderText="Product Name" />
            <asp:BoundField DataField="Cost" HeaderText="Product Cost" />
            <asp:ButtonField ButtonType="Button" Text="Add To Cart" ShowHeader="false" />

        </Columns>
    </asp:GridView>
</asp:Content>
