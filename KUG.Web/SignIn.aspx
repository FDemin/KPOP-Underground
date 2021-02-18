<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="KpopUG.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors" />
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
            width: 300px;
            height: 430px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 80px;
            background-image: url('tw-bg.jpg') ;
            background-repeat: no-repeat;
            background-size: cover;
            background-position: inherit;
            background-size: 100%;
        }

        main {
            background-color: white;
            border-radius: 25px;
            padding: 30px;
        }

      
    </style>

    <!-- Initialize Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous" />

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet" />
</head>

<body class="text-center container-size">
    <main class="form-signin" style="background: rgba(255, 255, 255, 0.8);">
        <form id="form1" runat="server" >
            <div >
                <img class="mb-4" src="kpopundrgrnd_logo.png" alt="Logo here" width="102" height="99"  />
                <h1 class="h3 mb-3 fw-normal">Log In - 로그인</h1>
                <label for="inputEmail" class="visually-hidden">Username</label>
                <!-- ASP.NET Username Textbox -->
                <asp:TextBox ID="inputUsername" runat="server" CssClass="form-control" placeholder="Username" required="true" />
                <label for="inputPassword" class="visually-hidden">Password</label>
                <!-- ASP.NET Password Textbox -->
                <asp:TextBox ID="inputPassword" runat="server" CssClass="form-control" placeholder="Password" required="true" />
                <div class="checkbox mb-3">
                    <label>
                        <!-- ASP.NET Remember Me CheckBox -->
                        <asp:CheckBox ID="rememberUser" runat="server" />
                        Remember me
                    </label>
                </div>
                <!-- ASP.NET Submit Button -->
                <asp:Button ID="Submit" runat="server" Text="LOG IN" CssClass="w-100 btn btn-lg btn-primary" />
                
                 <p class="fw-normal" style="opacity: 0.5;">&nbsp;</p>
                <span class="fw-normal" style="opacity: 0.5;">New to Kpop Underground? </span> <a href="https://www.youtube.com/watch?v=CM4CkVFmTds&ab_channel=JYPEntertainment" style="white-space:nowrap">Sign Up</a>
                <p class="mt-5 mb-3 text-muted">&copy; Copyright 2021 - Kpop Underground</p>
            </div>
        </form>
    </main>

</body>
</html>
