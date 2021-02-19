<%@ Page Title="Signup" Language="C#" MasterPageFile="~/Auth/Auth.Master" AutoEventWireup="true" CodeBehind="SignupSuccess.aspx.cs" Inherits="KpopUG.Auth.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" ID="panel1" DefaultButton="Login">
        <div class="auth-bg-img iz-bg center-screen">
            <div class="auth-modal">
                <img class="mb-4" src="../image/kpopundrgrnd_logo.png" alt="Logo" width="102" height="99">
                <h1 class="h3 mb-3 fw-normal">Account Created Successfully</h1>

                <hr />

                <asp:Button ID="Login" CssClass="w-100 btn btn-lg btn-primary" runat="server" Text="Return to Login" PostBackUrl="~/Auth/Login.aspx" />

                <br />
                <br />
                <p>
                    &copy; Copyright 2021 - Kpop Underground
                </p>
 
            </div>
        </div>
    </asp:Panel>
</asp:Content>
