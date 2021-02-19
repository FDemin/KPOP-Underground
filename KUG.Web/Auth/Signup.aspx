<%@ Page Title="Signup" Language="C#" MasterPageFile="~/Auth/Auth.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="KpopUG.Auth.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" ID="panel1" DefaultButton="Submit">
        <div class="auth-bg-img iz-bg center-screen">
            <div class="auth-modal">
                <img class="mb-4" src="../image/kpopundrgrnd_logo.png" alt="Logo" width="102" height="99">
                <h1 class="h3 mb-3 fw-normal">Create Account - 계정 생성 </h1>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red"/>
                
                <br />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Username already exists!" Display="None" ControlToValidate="inputUsername" OnServerValidate="CustomValidator1_ServerValidate" />
                <asp:TextBox ID="inputUsername" CssClass="form-control" runat="server" required="true" autofocus="true" placeholder="Username" />
                
                <br />
                <asp:TextBox ID="inputPassword" CssClass="form-control" runat="server" required="true" placeholder="Password" TextMode="Password" />

                <br />
                <asp:TextBox ID="inputName" CssClass="form-control" runat="server" required="true" placeholder="Full Name" />

                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputPhone" ErrorMessage="Enter a valid mobile number" ValidationExpression="^(09|\+639)\d{9}$" Display="None"/>
                <asp:TextBox ID="inputPhone" CssClass="form-control" runat="server" placeholder="Contact Number" required="true" />
                
                <br />
                <asp:TextBox ID="inputEmail" runat="server" placeholder="Email" CssClass="form-control" required="true" />

                <br />
                <br />
                <asp:Button ID="Submit" CssClass="w-100 btn btn-lg btn-primary" runat="server" Text="Create an account" OnClick="Submit_Click" />

                <br />
                <br />
                <span class="fw-normal" style="opacity: 0.5;">
                    Already have an account?
                </span>
                
                <asp:Hyperlink runat="server" NavigateUrl="Login.aspx" style="white-space: nowrap">
                    Login
                </asp:Hyperlink>

                <br />
                <asp:Label Text="" ID="lblSuccess" runat="server" ForeColor="Green" />

                <br />
                <p>
                    &copy; Copyright 2021 - Kpop Underground
                </p>
 
            </div>
        </div>
    </asp:Panel>
</asp:Content>
