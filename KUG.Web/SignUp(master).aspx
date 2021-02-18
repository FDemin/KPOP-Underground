<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp(master).aspx.cs" Inherits="KpopUG.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.79.0">
    <title>Kpop Underground - Sign Up</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous" />

    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* .bd-placeholder-img {
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
      }*/
        .container-size {
            background-image: url('../image/iz-bg.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            padding-top: 30px;
            background-color: black;
            width: 100%;
            height: 750px;
        }

        main {
            width: 400px;
            height: auto;
            border-radius: 25px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            text-align: center;
            margin-top: 50px;
            margin-left: auto;
            margin-right: auto;
            padding-bottom: 30px;
        }
    </style>

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel runat="server" ID="panel1" DefaultButton="Submit">
        <div class="container-size">
            <main>
                <img class="mb-4" src="../image/kpopundrgrnd_logo.png" alt="Logo" width="102" height="99">
                <h1 class="h3 mb-3 fw-normal">Create Account - 계정 생성 </h1>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <label for="inputEmail" class="visually-hidden">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputUsername" ErrorMessage="Input a username"> *</asp:RequiredFieldValidator>
                    Username</label>
                <!-- ASP USER ID HF -->
                <asp:HiddenField ID="hfUID" runat="server" />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Username already exists!" Display="None" ControlToValidate="inputUsername" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                <!-- ASP username input -->
                <asp:TextBox ID="inputUsername" CssClass="form-control" runat="server" required="true" autofocus="true" placeholder="Username" />
                <label for="inputPassword" class="visually-hidden">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputPassword" ErrorMessage="Input a password"> *</asp:RequiredFieldValidator>
                    Password</label>
                <!-- ASP password input -->
                <asp:TextBox ID="inputPassword" CssClass="form-control" runat="server" required="true" placeholder="Password" TextMode="Password" />
                <label for="inputName" class="visually-hidden">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputName" ErrorMessage="Enter your full name"> *</asp:RequiredFieldValidator>
                    Full Name</label>
                <!-- ASP full name input -->
                <asp:TextBox ID="inputName" CssClass="form-control" runat="server" required="true" placeholder="Full Name" />
                <label for="inputPhone" class="visually-hidden">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="inputPhone" ErrorMessage="Enter your contact number">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputPhone" ErrorMessage="Enter a valid mobile number" ValidationExpression="^(09|\+639)\d{9}$">*</asp:RegularExpressionValidator>
                    Contact Number</label>
                <!-- ASP phone number input -->
                <asp:TextBox ID="inputPhone" CssClass="form-control" runat="server" placeholder="Contact Number" required="true" />
                <label for="inputEmail" class="visually-hidden">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="inputEmail" ErrorMessage="Input valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> *</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputEmail" ErrorMessage="Input email"> *</asp:RequiredFieldValidator>
                    Email</label>
                <!-- ASP Email Input -->
                <asp:TextBox ID="inputEmail" runat="server" placeholder="Email" CssClass="form-control" required="true" />
                <!-- ASP Submit button -->
                <asp:Button ID="Submit" CssClass="w-100 btn btn-lg btn-primary" runat="server" Text="Create an account" OnClick="Submit_Click" /><br />
                <br />
                <span class="fw-normal" style="opacity: 0.5;">Already have an account? </span><a href="SignIn(master).aspx" style="white-space: nowrap">Login</a>
                <!-- ASP Success -->
                <asp:Label Text="" ID="lblSuccess" runat="server" ForeColor="Green" />
                <br />
                <br />
                <p>
                    &copy; Copyright 2021 - Kpop Underground
                </p>
                <p class="mt-5 mb-3 text-muted">&nbsp;</p>
            </main>
        </div>
    </asp:Panel>

</asp:Content>
