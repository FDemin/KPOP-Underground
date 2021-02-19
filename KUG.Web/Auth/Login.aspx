<%@ Page Title="Login" Language="C#" MasterPageFile="~/Auth/Auth.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KpopUG.Auth.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="panel1" runat="server" DefaultButton="Login">
        <div class="auth-bg-img tw-bg center-screen">
            <div class="auth-modal">
                <asp:Image ImageUrl="../image/kpopundrgrnd_logo.png" runat="server" class="mb-4" AlternateText="Logo Here" Width="102" Height="99"/>
                <h1 class="h3 mb-3 fw-normal">Log In - 로그인</h1>
                
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red"/>
                <br />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Username does not exist!" ControlToValidate="inputUsername" OnServerValidate="CustomValidator1_ServerValidate" Display="None" />
                <asp:TextBox ID="inputUsername" runat="server" CssClass="form-control" placeholder="Username" required="true"/>
                
                <br />
                <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Incorrect Password!" ControlToValidate="inputPassword" OnServerValidate="CustomValidator2_ServerValidate" Display="None"/>
                <asp:TextBox ID="inputPassword" runat="server" CssClass="form-control" placeholder="Password" required="true" TextMode="Password" />
                
                <br />

                <div class="checkbox mb-3">
                    <label>
                        <asp:CheckBox ID="rememberUser" runat="server" />
                        Remember me <!-- kapag nag-iisa -->
                    </label>
                </div>

                <asp:Button ID="Login" runat="server" Text="LOG IN" CssClass="w-100 btn btn-lg btn-primary" OnClick="Login_Click" />

                <asp:Label ID="lblSuccess" Text="Success!" runat="server" ForeColor="Green" />

                <p class="fw-normal" style="opacity: 0.5;">
                    &nbsp;
                </p>

                <span class="fw-normal" style="opacity: 0.5;">
                    New to Kpop Underground?
                </span>
                <asp:Hyperlink runat="server" NavigateUrl="Signup.aspx" style="white-space: nowrap">Sign Up</asp:Hyperlink>
                
                <p class="mt-5 mb-3 text-muted">
                    &copy; Copyright 2021 - Kpop Underground
                </p>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
