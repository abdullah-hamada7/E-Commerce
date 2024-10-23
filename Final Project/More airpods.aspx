﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="More airpods.aspx.cs" Inherits="Final_Project.More_airpods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>More airpods</title>
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>

        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap");

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

body {
  overflow-x: hidden;
  min-height: 100vh;
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}
a{
    color: black;
    text-decoration: none;
}
.container{
    width: 900px;
    margin: auto;
    max-width: 90vw;
    text-align: center;
    padding-top: 10px;
}
.title{
    color: #000000;
    font-size: 40px;
    padding: 20px 0;
    font-weight:bolder;
}
.listProduct .item img{
    width: 30%;
}
.listProduct{
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}
.listProduct .item{
    background-color: #faf9fa;
    position: relative;
    padding: 20px;
    border-radius: 20px;
    margin-top: 25px;
    overflow: hidden;
}
.listProduct .item:hover{
    transform: scale(1.05);
    transition: transform 0.3s ease;
}
.h2 {
    font-weight: 500;
    font-size: large;
    color: #000000;
    display: grid;
    text-align: center;
    margin-bottom:15px;
}
.discription{
    font-weight: 300;
    font-size: 15px;
    color:#555454;
    display: grid;
    gap: 50px;
    margin-bottom: 10px;
}

.listProduct .item .price{
    font-size:large;
    color: #000000;
    margin-top:30px ;

}
.new span{
    padding: 7px 15px;
    position: absolute;
    top: 0;
    left: 0;
    background-color: #f0d43a;
    color: #ffffff;
    font-size: 15px;
    font-weight: 800;
}
.buttons {
    display: flex;
    gap: 20px;
    

}

.buttons .but1 {
    background-color: #2F2F2F;
        display: flex;
        padding: 5px 35px;
        justify-content: center;
        align-items: center;
        color: white;
        border: 1px solid #2F2F2F;
        border-radius: 6px;
        margin-top: 8px;
        margin-bottom: 8px;
        align-items: center;
        font-weight: bold;
        
}

.buttons .but2 {
    background-color: #f0d43a;
    display: flex;
    padding: 5px 35px;
    justify-content: center;
    align-items: center;
    color: white;
    border: 1px solid #f0d43a;
    border-radius: 6px;
    margin-top: 8px;
    margin-bottom: 8px;
    align-items: center;
    font-weight:bold;

}
.buttons .but1:hover {
    transform: scale(1.05);
    transition: transform 0.3s ease;
    cursor: pointer;
}

.buttons .but2:hover {
    transform: scale(1.05);
    transition: transform 0.3s ease;
    cursor: pointer;
}






/* Deatails Page */




@media only screen and (max-width: 1200px) {
    .listProduct {
        grid-template-columns: repeat(3, 1fr);
    }
}


@media only screen and (max-width: 768px) {
    .listProduct {
        grid-template-columns: repeat(2, 1fr);
    }
}

/*! *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
Start nav bar
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*= */

nav {
  background-color: #333;
  box-shadow: 3px 3px 5px rgba(0, 0, 0, 0.1);
}

nav ul {
  width: 100%;
  list-style: none;
  display: flex;
  justify-content: flex-end;
  align-items: center;
}

nav li {
  height: 70px;
}

nav a {
  height: 100%;
  padding: 0 30px;
  text-decoration: none;

  display: flex;
  align-items: center;
  color: #fff;
  font-size: 20px;
}

nav a:hover {
  background-color: #e6e6e6;
  color: black;
}

/* ====================================================== */

.sidebar {
  position: fixed;
  top: 0;
  right: 0;
  height: 100vh;
  width: 250px;
  z-index: 9999;
  background-color: rgba(255, 255, 255, 0.2);
  /*  */
  backdrop-filter: blur(10px); /*to blur the background*/
  /*  */

  box-shadow: -10px 0 10px rgba(0, 0, 0, 0.1);

  display: none; /*first we make it flex then make it none*/
  flex-direction: column;
  justify-content: flex-start;
  align-items: flex-start;
}

.sidebar li {
  width: 100%;
}
.sidebar a {
  width: 100%;
  color: black;
}

.menu-btn {
  display: none;
}
/* Responsive */

@media (max-width: 890px) {
  .hideOnMobile {
    display: none;
  }

  .menu-btn {
    display: block;
  }
}

@media (max-width: 550px) {
  .sidebar {
    width: 100%;
  }
}

/*! *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
Start Footer
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*= */
.footer {
    background-color: #2F2F2F;
    padding-top: 115px;
    padding-bottom: 115px;
    padding-right: 90px;
    padding-left: 90px;
    display: grid;
    grid-template-columns: repeat(2, 1.5fr) repeat(2, 1fr);
    gap: 30px;
    margin-top: 130px;
    color: #ffffff;
    font-size: 15px;
    width: 100%;
    height: 430px;
    overflow: hidden;
}

.footercol {
    margin-bottom: 30px;
}
.footercol h4 {
    font-weight: 600;
    margin-bottom: 20px;
    color:#ffffff;
 }



ul {
    display: flex;
    gap: 20px;
}

    ul li {
        list-style: none;
    }

        ul li a img {
            width: 40px;
            display: block;
        }


.footercol a {
    color: #ffffff;
    text-decoration: none;
}

.social {
    background-color: #ffffff;
    color: #2F2F2F;
}
.con {
    background-color: #2f2f2f;
    height:50px;
}
.copyright {
    color: #ffffff;
    text-align:center;
}
.footer .footercol p{
    margin-bottom:20px;
}
.footer .footercol p :hover{
    color:#f0d43a
}
h4{
    font-size: 25px;
    color:#ffffff;
}
.footer_social .fa {
    font-size: 16px;
    width: 30px;
    height: 30px;
    display:inline-block;
    justify-content: center;
    align-items: center;
    text-align: center;
    text-decoration: none;
    background-color: #ffffff;
    color: #2f2f2f;
    padding-top:7px;
    border-radius:16px;
}

    .fa:hover {
        color: #f0d43a;
    }
.contact a {
    margin: 5px 0;
    color: #ffffff;
    display:block;
    margin-bottom:15px;
}
.contact a i {
        margin-right: 5px;
    }

.contact a:hover {
        color: #f0d43a;
    }


@media screen and (max-width: 1200px) {
    .footer {
        grid-template-columns: repeat(4, 1fr);
    }
}

@media screen and (max-width: 1000px) {
    .footer {
        grid-template-columns: repeat(2, 1fr);
    }

    .footercol h4,
    .footercol h2 {
        margin-top: 20px;
    }
}

@media screen and (max-width: 600px) {
    .footer {
        grid-template-columns: 1fr;
    }

    .footercol h4 {
        margin-top: 20px;
    }
}

/*! *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
End Footer
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*= */


    </style>

</head>
<body>
    <form id="form1" runat="server">

        <!-- start navbar -->
        <nav>
            <ul class="sidebar">
                <!-- close icon -->
                <li onclick="hideSidebar()">
                    <a href="#">
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            height="24"
                            viewBox="0 -960 960 960"
                            width="24">
                            <path
                                d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z" />
                        </svg></a>
                </li>
<li><a href="Home Page.aspx">Home</a></li>
                <li onclick="hideSidebar()"><a href="More phones.aspx">Phones</a></li>
                <li onclick="hideSidebar()"><a href="More laptops.aspx">Laptops</a></li>
                <li onclick="hideSidebar()"><a href="More watches.aspx">Watches</a></li>
                <li class="hideOnMobile"><a href="Card.aspx"><img src="Images/shopping-cart.png" width="50px" height="50px"></img></a></li>
            </ul>

            <!-- NOT on mobile -->
            <ul>
                <!-- if you want to hide log add this class also -->
                <li class="hideOnMobile"><a href="Home Page.aspx">Home</a></li>
                <li class="hideOnMobile"><a href="More phones.aspx">Phones</a></li>
                <li class="hideOnMobile"><a href="More laptops.aspx">Laptops</a></li>
                                            <li onclick="hideSidebar()"><a href="More watches.aspx">Watches</a></li>
                <li class="hideOnMobile"><a href="Card.aspx"><img src="Images/shopping-cart.png" width="50px" height="50px"></img></a></li>

                <!-- Open icon -->
                <li class="menu-btn" onclick="showSidebar()">
                    <a href="#">
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            height="28"
                            viewBox="0 -960 960 960"
                            width="24">
                            <path
                                d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z" />
                        </svg></a>
                </li>
            </ul>
        </nav>

    <div class="container">
      <div class="title">Airpods</div>
      <div class="listProduct">
          
          <!-- other1 -->
          <div class="item">
               <div class="new"><span>New</span></div>
               <img src="img/other/3.png">
               <asp:Label class="title" runat="server" CssClass="h2 price" ID="label1" >Wireless Headphone Sodo</asp:Label>
               Price:<asp:Label class="price" runat="server" CssClass="h2" ID="label2">400</asp:Label>
               <asp:Label class="discription" runat="server" CssClass="discription" ID="label3">Expertly rendered by Carl Hansen & Søn, the lounge chair first introduced in 1951.</asp:Label>
               <div class="buttons">
                  <asp:Button class="buy_btn" runat="server" Text="Buy" CssClass="but1" OnClick="buy1"></asp:Button>
               </div>
            </div>
          
          <!-- other2 -->

          <div class="item">
               <div class="new"><span>New</span></div>
               <img src="img/other/5.png">
               <asp:Label class="title" runat="server" CssClass="h2 price" ID="label4">Lenovo Wireless Bluetooth</asp:Label>
               Price:<asp:Label class="price" runat="server" CssClass="h2" ID="label5">350</asp:Label>
               <asp:Label class="discription" runat="server" CssClass="discription" ID="label6">Expertly rendered by Carl Hansen & Søn, the lounge chair first introduced in 1951.</asp:Label>
               <div class="buttons">
                  <asp:Button class="buy_btn" runat="server" Text="Buy" CssClass="but1" OnClick="buy2" ></asp:Button>
               </div>
            </div>
          
          <!-- other3 -->

          <div class="item">
               <div class="new"><span>New</span></div>
               <img src="img/other/6.png">
               <asp:Label class="title" runat="server" CssClass="h2 price" ID="label7">Gaming Headphone</asp:Label>
               Price:<asp:Label class="price" runat="server" CssClass="h2" ID="label8">230</asp:Label>
               <asp:Label class="discription" runat="server" CssClass="discription" ID="label9">Expertly rendered by Carl Hansen & Søn, the lounge chair first introduced in 1951.</asp:Label>
               <div class="buttons">
                  <asp:Button class="buy_btn" runat="server" Text="Buy" CssClass="but1" OnClick="buy3"></asp:Button>
               </div>
            </div>
          
          <!-- other4 -->

          <div class="item">
               <div class="new"><span>New</span></div>
               <img src="img/other/7.png">
               <asp:Label class="title" runat="server" CssClass="h2 price" ID="label10" >Headphone with Mic</asp:Label>
               <asp:Label class="price" runat="server" CssClass="h2" ID="label11">Price:$290</asp:Label>
               <asp:Label class="discription" runat="server" CssClass="discription" ID="label12">Expertly rendered by Carl Hansen & Søn, the lounge chair first introduced in 1951.</asp:Label>
               <div class="buttons">
                  <asp:Button class="buy_btn" runat="server" Text="Buy" CssClass="but1" OnClick="buy4"></asp:Button>
               </div>
            </div>
          

          

          </div>
        </div>

        <footer class="footer">
            <div class="footercol">
                <h4>About</h4>
                <div>
                <p>
                    Necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with
                </p>
                <div class="footer_social">
              <a href="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
            </div>
            </div>

        </div>
        <div class="footercol">
            <h4>Contact us</h4>
            <div class="contact">
            <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  Location
                </span>
              </a>
            <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call +01 1234567890
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>
                  demo@gmail.com
                </span>
              </a>
                </div>
        </div>
        <div class="footercol">
            <h4>Subscribe</h4>
            <div class="contact">
            <p><a href="Sign up.aspx">Sign Up</a></p>
            <p><a href="Log in.aspx">Log In</a></p>
                                <p><a href="Contactus.aspx">Contact us</a></p>
            <p><a href="#">IOS app</a></p>
            <p><a href="#">Android app</a></p>
            </div>
        </div>
        <div class="footercol">
            <h4>Company</h4>
            <div>
            <p><a href="#">About QQQ</a></p>
            <p><a href="#">For Business</a></p>
            <p><a href="#">partners</a></p>
            <p><a href="#">Careers</a></p>
            </div>
        </div>
        </footer>
        <div class="con">
        <p class="copyright">&copy; 2024 All Rights Reserved By Our Team</p>
        </div>
    <!-- End Footer -->
    </form>
</body>
</html>