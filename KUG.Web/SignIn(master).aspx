<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignIn(master).aspx.cs" Inherits="KpopUG.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="ASP.NET Group" />
    <meta name="generator" content="Hugo 0.79.0" />
    <title>Kpop Underground - Sign In</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/" />



    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet" />

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .container-size {
            background-image: url('../image/tw-bg.jpg');
            /*background-image: url('tw-bg1.jpg'); */
            background-repeat: no-repeat;
            background-size: cover;
            padding-top: 30px;
            background-color: black;
            width: 100%;
            height: 750px;
        }

        main {
            text-align: center;
            margin-top: 50px;
            margin-left: auto;
            margin-right: auto;
            width: 400px;
            height: 600px;
            background-color: white;
            border-radius: 25px;
            padding: 30px;
        }
    </style>
    <!-- Initialize Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous" />

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-size">
        <main class="form-signin" style="background: rgba(255, 255, 255, 0.9);">

            <asp:Panel ID="panel1" runat="server" DefaultButton="Login">
                <img class="mb-4" src="../image/kpopundrgrnd_logo.png" alt="Logo here" width="102" height="99" />
                <h1 class="h3 mb-3 fw-normal">Log In - 로그인</h1>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <label for="inputEmail" class="visually-hidden">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputUsername" ErrorMessage="Enter your username">*</asp:RequiredFieldValidator>
                    Username</label>
                <!-- ASP.NET Username Textbox -->
                <asp:TextBox ID="inputUsername" runat="server" CssClass="form-control" placeholder="Username" required="true" />
                <label for="inputPassword" class="visually-hidden">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputPassword" ErrorMessage="Enter your password">*</asp:RequiredFieldValidator>
                    Password</label>
                <!-- ASP.NET Password Textbox -->
                <asp:TextBox ID="inputPassword" runat="server" CssClass="form-control" placeholder="Password" required="true" TextMode="Password" />
                <div class="checkbox mb-3">
                    <label>
                        <!-- ASP.NET Remember Me CheckBox -->
                        <asp:CheckBox ID="rememberUser" runat="server" />
                        Remember me
                    </label>
                </div>
                <!-- ASP.NET Submit Button -->
                <asp:Button ID="Login" runat="server" Text="LOG IN" CssClass="w-100 btn btn-lg btn-primary" OnClick="Login_Click" />
                <!-- ASP.NET Error Label -->
                <asp:Label ID="lblError" runat="server" Text="Incorrect Username or Password" ForeColor="Red"> </asp:Label>
                <!-- ASP.NET Success Label -->
                <asp:Label ID="lblSuccess" Text="Success!" runat="server" ForeColor="Green" />

                <p class="fw-normal" style="opacity: 0.5;">&nbsp;</p>
                <span class="fw-normal" style="opacity: 0.5;">New to Kpop Underground? </span><a href="SignUp(master).aspx" style="white-space: nowrap">Sign Up</a>
                <p class="mt-5 mb-3 text-muted">&copy; Copyright 2021 - Kpop Underground</p>
            </asp:Panel>
        </main>
    </div>

</asp:Content>
