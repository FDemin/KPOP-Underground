﻿<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="KpopUG.Dashboard.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- CSS -->
    <link href="../Styles/aboutus.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section id="aboutus">
        <!-- MAIN (Center website) -->
        <div class="main">

            <h1>About Us</h1>
            <hr>

            <div class="content">
                <img src="../image/aboutus/aboutUs.PNG" alt="Kpop Underground Logo" style="width: 100%">
                <h3>Who we are</h3>
                <p>Kpop Underground is our team's project for our .NET3 Class, it was made and have been collaborated with for at most 3 weeks</p>
                <p>Lorem ipsum dolor sit amet, tempor prodesset eos no. Temporibus necessitatibus sea ei, at tantas oporteat nam. Lorem ipsum dolor sit amet, tempor prodesset eos no.</p>
            </div>

            <h2>Meet the Team:</h2>

            <!-- Portfolio Gallery Grid -->

            <div class="row">
                <div class="column">
                    <div class="content">
                        <img src="../image/aboutus/allag.jpg" style="width: 100%">
                        <h3>Austin Allag</h3>
                        <p>Tarantadong Anak</p>
                    </div>
                </div>

                <div class="column">
                    <div class="content">
                        <img src="../image/aboutus/demin.jpg" style="width: 100%">
                        <h3>Francis Demin</h3>
                        <p>Master Coder</p>
                    </div>
                </div>
                <div class="column">
                    <div class="content">
                        <img src="../image/aboutus/enriquez.jpg" style="width: 100%">
                        <h3>Kiko Enriquez</h3>
                        <p>Gadget PranksterKing</p>
                    </div>
                </div>
                <div class="column">
                    <div class="content">
                        <img src="../image/aboutus/ibarra.jpg" style="width: 100%">
                        <h3>Dan Ibarra</h3>
                        <p>Sex Toy Enthusiast</p>
                    </div>
                </div>

                <div class="column">
                    <div class="content">
                        <img src="../image/aboutus/lopez.jpg" style="width: 100%">
                        <h3>Adrian Lopez</h3>
                        <p>Mother Fucker Car Driver</p>
                    </div>
                </div>

                <div class="column">
                    <div class="content">
                        <img src="../image/aboutus/sorallo.jpg" style="width: 100%">
                        <h3>Kai Sorallo</h3>
                        <p>Resident Shabu Expert</p>
                    </div>
                </div>

                <!-- END GRID -->
            </div>

            <!-- END MAIN -->
        </div>

    </section>

</asp:Content>
