<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="Final_Project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');

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

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body{
            background:url("Images/contactus.jpg") no-repeat fixed;
            background-size:cover;
        }
        .container{
            align-items:center;
        }

.form-input {
    margin-top: 50px;
    width: 290px;
    height: 40px;
    padding-left: 10px;
    outline: none;
    border: none;
    font-size: 15px;
    margin-bottom: 10px;
    background: none;
    border-bottom: 2px solid #fff;
    margin-left:100px;
}

.form-input::placeholder {
    color: #ddd;
}


.form-button {
    border: none;
    background: #fff;
    border-radius: 5px;
    margin-top: 20px;
    font-weight: 600;
    font-size: 20px;
    color: #333;
    width: 100px;
    padding: 0;
    margin-left: 100px;
    margin-bottom: 30px;
    transition: 0.3s;
}

.form-button:hover {
    opacity: 0.7;
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
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


<div class="container">
    <asp:TextBox ID="firstname" runat="server" CssClass="form-input" placeholder="First Name"></asp:TextBox>
    <asp:TextBox ID="lastName" runat="server" CssClass="form-input" placeholder="Last Name"></asp:TextBox>
    <p>
        <asp:TextBox ID="message" runat="server" CssClass="form-input" placeholder="Type Your Message Here..."></asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="email" runat="server" CssClass="form-input" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="mobile" runat="server" CssClass="form-input" placeholder="Mobile"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="button" runat="server" Text="Send" CssClass="form-button" onclick="button_Click"/>
    </p>
</div>

</form>

</body>
</html>
