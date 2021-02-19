<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="KpopUG.Dashboard.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .col-25,
        .col-50,
        .col-75 {
            padding: 0 16px;
        }

        .container {
            background-color: #f2f2f2;
            padding: 5px 20px 15px 20px;
            border: 1px solid lightgrey;
            border-radius: 3px;
        }


        span.price {
            float: right;
            color: grey;
        }
        /*  */

        #prof{
            position: absolute;
            top: 150px;
            left: 100px;
            width: 500px;
        }

           #cart {
            
            width: 500px;
            position: absolute;
            top: 680px;
            left: 100px;
        }
            #payment {
            position: absolute;
            top: 360px;
            right: 110px;
            width: 500px;
        }
           #topup{
               width: 520px;
               position: absolute;
               top: 150px;
               right: 100px;
               text-align:center;
               
           }
           /*.hidden { display: none; }*/
    </style>
    <link href="../Styles/payment.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="topup">
        <div class="col-25">
            <div class="container">
                <h2>Top-Up</h2>
                <asp:Button CssClass="btn1" ID="top250" runat="server" Text="250" />
                <asp:Button CssClass="btn1" ID="top500" runat="server" Text="500" />
                <asp:Button CssClass="btn1" ID="top1000" runat="server" Text="1000" />
                <asp:Button CssClass="btn1" ID="top2000" runat="server" Text="2000" />
            </div>
        </div>

    </section>



    <section id="prof">
        <div class="col-25">
            <div class="container">
                <h2>Profile</h2>
                  <label >Full Name</label>
              <!-- ASP TB -->
              <asp:TextBox ID="fullName" CssClass="tb1" placeholder="Juan Dela Cruz" ReadOnly="true" runat="server"></asp:TextBox>

                <label >Email</label>
              <!-- ASP TB -->
              <asp:TextBox ID="EMail" CssClass="tb1" placeholder="juandelacruz@test.com" ReadOnly="true" runat="server"></asp:TextBox>
           
                <label>Contact Number</label>
              <!-- ASP TB -->
              <asp:TextBox ID="contactNumber" CssClass="tb1" placeholder="0999 999 9999" ReadOnly="true" runat="server"></asp:TextBox>

                <label >Koinz</label>
              <!-- ASP TB -->
              <asp:TextBox ID="Koinz" CssClass="tb1" placeholder="0.00 Koinz" ReadOnly="true" runat="server"></asp:TextBox>
                <%--<a href="#">Edit</a>--%>
                <asp:Button ID="editButton" runat="server" Text="Edit" OnClick="editButton_Click" />
                <asp:Button ID="confirmButton" runat="server" Text="Confirm" OnClick="confirmButton_Click"/>
            </div>

        </div>
    </section>


    <section id="cart">
        <div class="col-25">
            <div class="container">
                <h4>Cart <span class="price" style="color: black"><i class="fa fa-shopping-cart"></i><b>4</b></span></h4>
                <p><a href="#">Product 1</a> <span class="price">$15</span></p>
                <p><a href="#">Product 2</a> <span class="price">$5</span></p>
                <p><a href="#">Product 3</a> <span class="price">$8</span></p>
                <p><a href="#">Product 4</a> <span class="price">$2</span></p>
                <hr>
                <p>Total <span class="price" style="color: black"><b>$30</b></span></p>
            </div>
        </div>
    </section>
    
    <section id="payment">
       
<div class="row">
  <div class="col-75">
    <div class="container">
          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
            </div>
            <label for="cname">Name on Card</label>
              <!-- ASP TB -->
              <asp:TextBox ID="ccName" CssClass="tb1" placeholder="Juan Dela Cruz" runat="server"></asp:TextBox>
           
            <label for="ccnum">Credit card number</label>
              <!-- ASP TB -->
              <asp:TextBox CssClass="tb1" ID="ccNum" placeholder="1111-2222-3333-4444" runat="server"></asp:TextBox>
           
            <label for="expmonth">Exp Month</label>
              <!-- ASP TB -->
              <asp:TextBox CssClass="tb1" ID="expMonth" placeholder="January" runat="server"></asp:TextBox>
            
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                  <!-- ASP TB -->
                  <asp:TextBox  CssClass="tb1" ID="expYear" placeholder="2021" runat="server"></asp:TextBox>
              
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                  <!-- ASP TB -->
                  <asp:TextBox CssClass="tb1" ID="CVV" runat="server" placeholder="123"></asp:TextBox>
                
              </div>
            </div>
          </div> 
        </div>
      <!-- ASP BUTTON -->
      <asp:Button ID="payButton" runat="server" Text="Pay" CssClass="btns"  />
        
    </div>
  </div>

        </section>
</asp:Content>
