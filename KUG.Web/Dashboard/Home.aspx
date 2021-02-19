<%@ Page Title="Home" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="KpopUG.Dashboard.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.79.0">
    <title>Kpop Underground - Home</title>

    <!-- CSS -->
    <link href="../Styles/home.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main style="padding-top: 100px;">

        <!-- Slideshow Start -->
        <section id="slideshow">
            <div class="slideshow-container">

                <div class="mySlides fade">
                    <img src="../image/slideshow-pics/banner-1.jpg" style="width: 100%">
                    <div class="text"></div>
                </div>

                <div class="mySlides fade">
                    <img src="../image/slideshow-pics/banner-2.jpg" style="width: 100%">
                    <div class="text"></div>
                </div>

                <div class="mySlides fade">
                    <img src="../image/slideshow-pics/banner-3.jpg" style="width: 100%">
                    <div class="text"></div>
                </div>

            </div>
            <br>

            <div style="text-align: center">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
            </div>
        </section>
        <!-- slideshow end -->

        <h1>Featured K-Pop Artists</h1>
        <a href="#">
            <img src="../image/quick-search/bp-logo.png" style="width: 150px; height: 150px;" /></a>
        <a href="#">
            <img src="../image/quick-search/bts-logo.png" style="width: 150px; height: 150px;" /></a>
        <a href="#">
            <img src="../image/quick-search/exo-logo.png" style="width: 150px; height: 150px;" /></a>
        <a href="#">
            <img src="../image/quick-search/itzy-logo.png" style="width: 150px; height: 150px;" /></a>
        <a href="#">
            <img src="../image/quick-search/iz-logo.png" style="width: 150px; height: 150px;" /></a>
        <a href="#">
            <img src="../image/quick-search/rv-logo.png" style="width: 150px; height: 150px;" /></a>
        <a href="#">
            <img src="../image/quick-search/tw-logo.png" style="width: 150px; height: 150px;" /></a>
        <a href="#">
            <img src="../image/quick-search/sj-logo.png" style="width: 150px; height: 150px;" /></a>
        <a href="#">
            <img src="../image/quick-search/bb-logo.png" style="width: 150px; height: 150px;" /></a>
        <a href="#">
            <img src="../image/quick-search/iu-logo.png" style="width: 150px; height: 150px;" /></a>

    </main>
    <article>
        <h2>News</h2>
        <blockquote class="twitter-tweet">
            <p lang="en" dir="ltr">
                IZ*ONE ONLINE CONCERT [ONE, THE STORY] <a href="https://twitter.com/official_izone?ref_src=twsrc%5Etfw">@official_izone</a><br>
                <br>
                Date: Mar.13th(Sat), 2021 8PM(KST), Mar.14th(Sun), 2021 5PM(KST)<br>
                📍 Online Concert Ticket: Information:<br>
                ▶ <a href="https://t.co/wA5Uyb1Naw">https://t.co/wA5Uyb1Naw</a><br>
                <a href="https://twitter.com/hashtag/%EC%95%84%EC%9D%B4%EC%A6%88%EC%9B%90?src=hash&amp;ref_src=twsrc%5Etfw">#아이즈원</a> <a href="https://twitter.com/hashtag/IZONE?src=hash&amp;ref_src=twsrc%5Etfw">#IZONE</a> <a href="https://twitter.com/hashtag/IZONE_ONLINE_CONCERT?src=hash&amp;ref_src=twsrc%5Etfw">#IZONE_ONLINE_CONCERT</a> <a href="https://twitter.com/hashtag/ONE_THE_STORY?src=hash&amp;ref_src=twsrc%5Etfw">#ONE_THE_STORY</a> <a href="https://twitter.com/hashtag/%EC%9B%90%EB%8D%94%EC%8A%A4%ED%86%A0%EB%A6%AC?src=hash&amp;ref_src=twsrc%5Etfw">#원더스토리</a> <a href="https://t.co/Q1u6V2UmCl">pic.twitter.com/Q1u6V2UmCl</a>
            </p>
            &mdash; Mwave (@OfficialMwave) <a href="https://twitter.com/OfficialMwave/status/1361559685543829504?ref_src=twsrc%5Etfw">February 16, 2021</a>
        </blockquote>
        <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </article>

    <!-- Slideshow JS -->
    <script src="../Scripts/banner.js"></script>
    <!-- Slideshow JS end-->
</asp:Content>
