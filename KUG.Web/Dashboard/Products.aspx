<%@ Page Title="Products" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="KpopUG.Dashboard.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/globals.css" rel="stylesheet" />
    <link href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"  rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<main class='main-content bgc-grey-100'>
<div id='mainContent'>
  <div class="container-fluid">
    <h4 class="c-grey-900 mT-10 mB-30">Data Tables</h4>
    <div class="row">
      <div class="col-md-12">
        <div class="bgc-white bd bdrs-3 p-20 mB-20">
          <h4 class="c-grey-900 mB-20">Our Items</h4>
          <br />
          Filter by Group: 
          <asp:DropDownList ID="groupDD" runat="server" ViewStateMode="Enabled"/>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Select Type of Product: 
            <asp:DropDownList ID="categoryDD" runat="server" ViewStateMode="Enabled"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="filterButton" CssClass="btn-outline-primary" OnClick="filterButton_Click" Text="Filter" />
            <br />
            <br />
          <asp:DataGrid runat="server" id="productsDataGrid" CssClass="table table-striped table-bordered" cellspacing="0" width="100%" />
        </div>
      </div>
    </div>
  </div>
</div>
</main>
    
</asp:Content>
