<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="Final_Project.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        
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

        *{
    box-sizing: border-box;
}

body{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    margin: 15px 30px;
    font-size: 17px;
    padding: 8px;
    font-weight: 600;
    background:url("Images/the-top-10-most-popular-online-payment-solutions-5e9978d564973.jpg") no-repeat fixed;
    background-size:cover;
    color:white;
}

.container{
    /*background-color: #f2f2f2;*/
    border: 1px solid gray;
    border-radius: 4px;
    padding: 5px 10px 15px 20px;
}

div{
    margin: 10px;
}

.main-heading{
    text-align: center;
}

input[type="text"],
input[type="email"],
input[type="number"],
input[type="date"],
input[type="password"],
select,textarea{
    width: 100%;
    padding: 10px;
    margin: 10px 0px;
    border: 1px solid #cccccc;
    border-radius: 4px;
    background-color:transparent;
    color:white;
}

input[type="submit"]{
    width: 100%;
    background-color: rgb(13, 163, 13);
    color: honeydew;
    font-size: 18px;
    padding: 12px 20px;
    margin: 10px 0px;
    border-radius: 7px;
    border: none;
    box-shadow: none;
    cursor: pointer;
}

input[type="submit"]:hover{
    background-color: rgb(7, 231, 7);
}

fieldset{
    background-color: transparent;
    border: 1px solid #cccccc;
    margin: 10px;
    font-size: 17px;
}

.Gender{
    font-size: 15px;
    font-weight: 500;
}
.card_type{
    color:black;
}

#visa{
    width: 65px;
}

#mastercard{
    width: 65px;
}

        .auto-style1 {
            height: 86px;
            width: 90px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div class="container">
      <nav>
        <ul class="sidebar">
            <!-- close icon -->
            <li onclick="hideSidebar()">
                <a href="#">
                    <svg xmlns="http://www.w3.org/2000/svg"
                         height="24"
                         viewBox="0 -960 960 960"
                         width="24">
                        <path d="m256-200-56-56 224-224-224-224 56-56 224 224 224-224 56 56-224 224 224 224-56 56-224-224-224 224Z" />
                    </svg>
                </a>
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
                    <svg xmlns="http://www.w3.org/2000/svg"
                         height="28"
                         viewBox="0 -960 960 960"
                         width="24">
                        <path d="M120-240v-80h720v80H120Zm0-200v-80h720v80H120Zm0-200v-80h720v80H120Z" />
                    </svg>
                </a>
            </li>
        </ul>
    </nav>

            <h1 class="main-heading">PAYMENT FORM</h1>
            <hr>
            <h2>User Information</h2>
            <legend>Name:</legend>
                     <asp:TextBox ID="name" runat="server" placeholder="Enter your name" required></asp:TextBox>
                        ID:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <fieldset>
                
                <legend>Gender:</legend>
                <div class="Gender">
                    <asp:RadioButton ID="male" runat="server" GroupName="gender" Text="male"/>
                    <asp:RadioButton ID="female" runat="server" GroupName="gender"  Text="female"/>
                </div>
            </fieldset>
            <div>
                Address:<asp:TextBox ID="address" runat="server" cols="50" rows="10" placeholder="Enter Address" required></asp:TextBox>
            </div>
            <div>
                Email:<asp:TextBox ID="email" runat="server" placeholder="Enter your email" required></asp:TextBox>
            </div>
            <div>
                Pincode:<asp:TextBox ID="pincode" runat="server" placeholder="Enter your pincode" TextMode="Password" required></asp:TextBox>
            </div>
            <hr>
            <h2>Payment Information</h2>
            <div>
                Accepted Cards <br>
                <div>
                    <img src="/Images/Visa.png" alt="Visa" class="cards" id="visa">
                    <img src="/Images/Mastercard.png" alt="MasterCard" class="cards" id="mastercard">
                </div>
                Card Type:
                <select name="card_type" id="card_type" required>
                    <option value="">--Select a Card Type</option>
                    <option value="visa">Visa</option>
                    <option value="mastercard">MasterCard</option>
                </select>
            </div>
            <div>
                Card Number:<asp:TextBox ID="card_number" runat="server" placeholder="ex:5555-6666-7777-8888" required></asp:TextBox>
            </div>
            <div>
     Expiration Date:<asp:TextBox ID="exp_date" runat="server" TextMode="Date" required></asp:TextBox>
            </div>
            <div>
                CVV:<asp:TextBox ID="textbox" runat="server" TextMode="Password" placeholder="ex:123" required></asp:TextBox>
                <img src="Images/10384161.png" class="auto-style1"/>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Green" Font-Size="X-Large" Text="Label"></asp:Label>
            </div>
                <asp:Button ID="Button1" runat="server" Text="Pay Now" type="submit" OnClick="Button1_Click" />
     </form>
    
    </div>
    </form>
</body>
</html>
