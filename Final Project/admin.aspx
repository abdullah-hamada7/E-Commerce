<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Final_Project.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0px;
            padding:0px;
        }

        .button{
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
        .auto-style2 {
            margin-top: 9px;
        }
        body{
            background:url("Images/administration-word-on-index-paper-600nw-435931375.jpg") fixed no-repeat;
                background-size: cover;

        }
        /*! *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
Start nav bar
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*= */

nav {
  background-color: #1E2C3A;
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
  font-size:24px;
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
  background-color: #1E2C3A;
  padding: 10px;

  display: grid;
  grid-template-columns: repeat(2, 1.5fr) repeat(2, 1fr);

  gap: 30px;

  margin-top: 500px;
}

.prt {
  /* background-color: red; */
}

.prt h2 {
  margin-bottom: 40px;
  color: #fff;
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

.prt p {
  font-size: 18px;
  margin-top: 40px;
}

.prt a {
  color: black;
  text-decoration: none;
}

@media screen and (max-width: 1200px) {
  .footer {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media screen and (max-width: 1000px) {
  .footer {
    grid-template-columns: repeat(2, 1fr);
  }

  .prt3 h2,
  .prt4 h2 {
    margin-top: 50px;
  }
}

@media screen and (max-width: 600px) {
  .footer {
    grid-template-columns: 1fr;
  }

  .prt2 h2 {
    margin-top: 50px;
  }
}
/*! *=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
End Footer
*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*= */

        .auto-style4 {
            font-size: xx-large;
            color: #FFFFFF;
            font-weight: bold;
        }

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

            </ul>

            <!-- NOT on mobile -->
            <ul>
                <!-- if you want to hide log add this class also -->
                <li class="hideOnMobile"><a href="Home Page.aspx">Home</a></li>



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


        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Users"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" CellPadding="100" ForeColor="#333333" GridLines="None" CellSpacing="5">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>



        <p>

        <asp:Button ID="Button1" runat="server" Text="Show" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" CssClass="button" />
        </p>
        <p>
            <asp:TextBox ID="deleted_user" runat="server" BorderStyle="Solid" CssClass="auto-style2"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Delete" BorderStyle="None" Font-Bold="True" ForeColor="Red" OnClick="Button2_Click" CssClass="button" />
        </p>
                 <p>


        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Text="Items"></asp:Label>
        </p>
                 <p>
                     <asp:Label ID="Label3" runat="server" Text="Item Name" ForeColor="White"></asp:Label>
            <asp:TextBox ID="Text1" runat="server" BorderStyle="Solid" CssClass="auto-style2"></asp:TextBox>
        </p>
                 <p>
                     <asp:Label ID="Label4" runat="server" Text="Item Price" ForeColor="White"></asp:Label>
            <asp:TextBox ID="Text2" runat="server" BorderStyle="Solid" CssClass="auto-style2"></asp:TextBox>
        </p>
                 <p>
                     <asp:Label ID="Label5" runat="server" Text="Item Description" ForeColor="White"></asp:Label>
            <asp:TextBox ID="Text3" runat="server" BorderStyle="Solid" CssClass="auto-style2" Rows="5"></asp:TextBox>
        </p>
                 <p>

        <asp:Button ID="Button3" runat="server" Text="Add" BorderStyle="None" Font-Bold="True" OnClick="Button3_Click" CssClass="button" />
        <asp:Button ID="Button4" runat="server" Text="Delete" BorderStyle="None" Font-Bold="True" ForeColor="Red" OnClick="Button4_Click" CssClass="button" />
        </p>
                 <p class="auto-style4">

                     Contact Requests</p>
        <asp:GridView ID="GridView2" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" CellSpacing="4">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" Width="100px" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>



                 <p class="auto-style4">

        <asp:Button ID="Button5" runat="server" Text="Show" BorderStyle="None" Font-Bold="True" OnClick="Button5_Click" CssClass="button" />
        </p>
                 <p class="auto-style4">

            <asp:TextBox ID="deleted_req" runat="server" BorderStyle="Solid" CssClass="auto-style2"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" Text="Delete" BorderStyle="None" Font-Bold="True" ForeColor="Red" OnClick="Button6_Click" CssClass="button" />
        </p>
                 <p class="auto-style4">

                     &nbsp;</p>


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
                <p><a href="Contactus.html">Contact us</a></p>
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

    </form>
</body>
</html>
