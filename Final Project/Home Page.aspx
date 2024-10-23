<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="Final_Project.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="CSS/style.css" />
    <title>Home Page</title>

    <!-- Impert swiper js -->
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    <link rel="icon" href="Images/homeflat_106039.ico" />
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
                <li><a href="#">Home</a></li>
                <li onclick="hideSidebar()"><a href="#phones">Phones</a></li>
                <li onclick="hideSidebar()"><a href="#laptop_sec">Laptops</a></li>
                <li onclick="hideSidebar()"><a href="#airpods_sec">Airpods</a></li>
                <li onclick="hideSidebar()"><a href="More watches.aspx">Watches</a></li>
                <li class="hideOnMobile"><a href="Card.aspx">
                    <img src="Images/shopping-cart.png"></img></a></li>
            </ul>

            <!-- NOT on mobile -->
            <ul>
                <!-- if you want to hide log add this class also -->
                <li class="hideOnMobile"><a href="#">Home</a></li>
                <li class="hideOnMobile"><a href="#phones">Phones</a></li>
                <li class="hideOnMobile"><a href="#laptop_sec">Laptops</a></li>
                <li class="hideOnMobile"><a href="#airpods_sec">Airpods</a></li>
                <li onclick="hideSidebar()"><a href="More watches.aspx">Watches</a></li>
                <li class="hideOnMobile"><a href="Card.aspx">
                    <img src="Images/shopping-cart.png"></img></a></li>

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

        <!-- end navbar -->

        <!-- start swiper -->
        <div class="container">
            <!-- Slider main container -->
            <div class="swiper">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- Slides -->
                    <div class="swiper-slide">
                        <img src="Images/imac.jpg" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/iphone.jpg" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/laptop.jpg" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/ipad.jpg" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/airpods.jpg" />
                    </div>
                    <div class="swiper-slide">
                        <img src="Images/headphone.jpg" />
                    </div>
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination"></div>

                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
        <!-- end swiper -->

        <!-- Phone sections -->

        <h2 class="phone_heading" id="phones">Explore Latest Phone</h2>
        <section class="phone_container">

            <section class="cards">
                <!-- phone 1 -->
                <div class="card">
                    <img src="Images/phone1.jpg" class="img-card" />
                    <asp:Label class="title" ID="Label1" runat="server" Text="" Font-Bold="True" Font-Size="X-Large">Iphone 15 pro max</asp:Label><br />
                    <br />
                    <asp:Label class="discription" ID="Label2" runat="server" Text="Label">This is a discription for this product and This is a discription for
            this product</asp:Label>
                    <div class="btns_card">
                        <button class="more_info_btn"><a href="#">More Info</a></button>

                        <asp:Button class="buy_btn" runat="server" Text="Buy" OnClick="Button1_Click" Width="174px" />


                    </div>
                    <!-- price of phone -->
                    <asp:Label ID="Label199" runat="server" Text="12345" CssClass="phone_price"></asp:Label>
                </div>

                <!-- phone 2 -->
                <div class="card">
                    <img src="Images/phone2.jpg" class="img-card" />
                    <asp:Label class="title" ID="Label18" runat="server" Text="" Font-Bold="True" Font-Size="X-Large">Samsung s25 Ultra</asp:Label><br />
                    <br />
                    <asp:Label class="discription" ID="Label19" runat="server" Text="Label">This is a discription for this product and This is a discription for
            this product</asp:Label>
                    <div class="btns_card">
                        <button class="more_info_btn"><a href="#">More Info</a></button>
                        <asp:Button class="buy_btn" runat="server" Text="Buy" OnClick="buy_phone2" Width="176px" />
                    </div>
                    <asp:Label ID="Label20" runat="server" Text="23131" CssClass="phone_price"></asp:Label>

                </div>

                <!-- phone 3 -->

                <div class="card">
                    <img src="Images/phone3.jpg" class="img-card" />
                    <asp:Label class="title" ID="Label16" runat="server" Text="" Font-Bold="True" Font-Size="X-Large">Iphone X</asp:Label><br />
                    <br />
                    <asp:Label class="discription" ID="Label17" runat="server" Text="Label">This is a discription for this product and This is a discription for
            this product</asp:Label>
                    <div class="btns_card">
                        <button class="more_info_btn"><a href="#">More Info</a></button>
                        <asp:Button class="buy_btn" runat="server" Text="Buy" OnClick="buy_phone3" Width="175px" />
                    </div>
                    <asp:Label ID="Label21" runat="server" Text="24353" CssClass="phone_price"></asp:Label>

                </div>

                <!-- phone 4 -->
                <div class="card">
                    <img src="Images/phone6.jpg" class="img-card" />
                    <asp:Label class="title" ID="Label11" runat="server" Text="" Font-Bold="True" Font-Size="X-Large">Realme 13c</asp:Label><br />
                    <br />
                    <asp:Label class="discription" ID="Label10" runat="server" Text="Label">This is a discription for this product and This is a discription for
            this product</asp:Label>
                    <div class="btns_card">
                        <button class="more_info_btn"><a href="#">More Info</a></button>
                        <asp:Button class="buy_btn" runat="server" Text="Buy" OnClick="buy_phone4" Width="176px" />
                    </div>
                    <asp:Label ID="Label22" runat="server" Text="64342" CssClass="phone_price"></asp:Label>

                </div>

                <!-- phone 5 -->
                <div class="card">
                    <img src="Images/phone7.jpg" class="img-card" />
                    <asp:Label class="title" ID="Label12" runat="server" Text="" Font-Bold="True" Font-Size="X-Large">Pocco 8t</asp:Label><br />
                    <br />
                    <asp:Label class="discription" ID="Label13" runat="server" Text="Label">This is a discription for this product and This is a discription for
            this product</asp:Label>
                    <div class="btns_card">
                        <button class="more_info_btn"><a href="#">More Info</a></button>
                        <asp:Button class="buy_btn" runat="server" Text="Buy" OnClick="buy_phone5" Width="174px" />
                    </div>
                    <asp:Label ID="Label23" runat="server" Text="52422" CssClass="phone_price"></asp:Label>

                </div>


                <!-- phone 6 -->
                <div class="card">
                    <img src="Images/phone7.jpg" class="img-card" />
                    <asp:Label class="title" ID="Label14" runat="server" Text="" Font-Bold="True" Font-Size="X-Large">Realme 16c</asp:Label><br />
                    <br />
                    <asp:Label class="discription" ID="Label15" runat="server" Text="Label">This is a discription for this product and This is a discription for
            this product</asp:Label>
                    <div class="btns_card">
                        <button class="more_info_btn"><a href="#">More Info</a></button>
                        <asp:Button class="buy_btn" runat="server" Text="Buy" OnClick="buy_phone6" Width="174px" />
                    </div>
                    <asp:Label ID="Label24" runat="server" Text="54322" CssClass="phone_price"></asp:Label>

                </div>
            </section>

            <!--show more phones button -->
            <button class="show_more_phones">
                <a href="More phones.aspx">Show More</a>
            </button>
        </section>
        <!-- End Phone sections -->

        <h2 class="laptop_heading">Latest Laptops</h2>

        <!-- Laptop section -->
        <div class="lp-con" id="laptop_sec">
            <section class="laptop_container">
                <div class="box box1">
                    <img src="Images/lap6.jpg" />
                </div>
                <div class="box box2">
                    <asp:Label ID="Label4" runat="server" Text="Dell XPS 16 (9640)" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="description">this is a simple discription for this laptop this is a simple
            discription for this laptop this is a simple discription for this
            laptop</asp:Label>
                    <asp:Button class="btn-laptop" runat="server" Text="Order Now" OnClick="buy_laptop1_Click" />

                </div>
                <div class="box box3">
                    <img src="Images/lap9.jpg" />
                </div>
                <div class="box box4">
                    <asp:Label ID="Label6" runat="server" Text="HP EliteBook" Font-Bold="True" Font-Size="X-Large"></asp:Label>

                    <asp:Label ID="Label7" runat="server" Text="description">this is a simple discription for this laptop this is a simple
            discription for this laptop this is a simple discription for this
            laptop</asp:Label>

                    <asp:Button class="btn-laptop" runat="server" Text="Order Now" OnClick="buy_laptop2_Click" />
                </div>
                <div class="box box5">
                    <img src="Images/lap8.jpg" />
                </div>
                <div class="box box6">
                    <asp:Label ID="Label9" runat="server" Text="HP EliteBook" Font-Bold="True" Font-Size="X-Large">Apple MacBook Pro 16 M3</asp:Label>
                    <asp:Label ID="Label8" runat="server" Text="description">this is a simple discription for this laptop this is a simple
            discription for this laptop this is a simple discription for this
            laptop</asp:Label>

                    <asp:Button class="btn-laptop" runat="server" Text="Order Now" OnClick="buy_laptop3_Click" />
                </div>
            </section>
        </div>
        <!--show more phones button -->
        <button class="show_more_laptops">
            <a href="More laptops.aspx">More Laptops</a>
        </button>
        <!-- End Laptop section -->

        <!-- Airpods Section -->
        <section class="airpods_container" id="airpods_sec">
            <asp:Label class="airpods_heading" runat="server" Text="label_airpods" ID="label">Airpods</asp:Label>
            <div class="airpods_prts">
                <div class="airpods-prt1">
                    <img src="Images/airpods-1.png" />
                    <button class="more airpods_btn"><a href="More airpods.aspx">More</a></button>
                </div>
                <div class="airpods-prt2">
                    <img src="Images/airpods-2.png" />
                    <asp:Button class="buy airpods_btn" runat="server" Text="Buy" OnClick="buy_airpods_Click" />
                </div>
            </div>
        </section>
        <!-- End Airpods Section -->

        <!-- Features Section -->

        <section class="section-featured" id="features">
            <h2 class="heading-featured-in">As Featured In</h2>
            <div class="logos">
                <img src="Images/techcrunch.png" alt="techcrunch logo" />

                <img src="Images/business-insider.png" alt="business-insider logo" />
                <img src="" alt="" />
                <img
                    src="Images/the-new-york-times.png"
                    alt="the-new-york-times logo" />
                <img src="" alt="" />
                <img src="Images/forbes.png" alt="forbes logo" />
                <img src="" alt="" />
                <img src="Images/usa-today.png" alt="usa today logo" />
                <img src="" alt="" />
            </div>
        </section>
        <!-- End Features Section -->

        <!-- Start Footer -->

        <footer class="footer">
            <div class="prt prt1">
                <h2>Social Media</h2>
                <ul>
                    <li>
                        <a href="#">
                            <img src="Images/facebook.png" /></a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="Images/instagram.png" /></a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="Images/twitter.png" /></a>
                    </li>
                </ul>

                <p>Copyright &copy; 2027 by QQQ, Inc. All rights reserved.</p>
            </div>
            <div class="prt prt2">
                <h2>Contact Us</h2>
                <p>623 Harrison St., 2nd Floor, San Francisco, CA 94107</p>
                <p>
                    <a class="footer-link" href="tel:415-201-6370">415-201-6370</a><br />
                    <br />
                    <a class="footer-link" href="mailto:hello@qqq.com">hello@qqq.com</a>
                </p>
            </div>
            <div class="prt prt3">
                <h2>Account</h2>
                <p><a href="Sign up.aspx">Create account</a></p>
                <p><a href="Log in.aspx">Sign In</a></p>
                <p><a href="Contactus.aspx">Contact us</a></p>
                <p><a href="#">IOS app</a></p>
                <p><a href="#">Android app</a></p>
            </div>
            <div class="prt prt4">
                <h2>Company</h2>
                <p><a href="#">About QQQ</a></p>
                <p><a href="#">For Business</a></p>
                <p><a href="#">partners</a></p>
                <p><a href="#">Careers</a></p>
            </div>
        </footer>
        <!-- End Footer -->
        <!-- Import swiper js -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
        <script src="JS/scrip.js"></script>
    </form>
</body>
</html>
