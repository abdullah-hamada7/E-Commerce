<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log in.aspx.cs" Inherits="Final_Project.Log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/sign in.css" />
    <title>Log In</title>
</head>
<body>
    <!-- Sectin Log In -->
    <section class="login">
        <form id="form1" runat="server" class="form">
            <label for="email" class="lbl">Email</label>

            <asp:TextBox ID="email"
                placeholder="Email"
                class="inp" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Vaild Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            &nbsp;<label for="pass" class="lbl">Password</label>

            <asp:TextBox ID="pass"
                placeholder="Password"
                class="inp" runat="server" TextMode="Password"></asp:TextBox>
            &nbsp;<!-- Keep Sign In --><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pass" ErrorMessage="please fill password" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="keep">
                <div>
                    <input type="checkbox" name="Keep" id="keep" />
                    <label for="keep">Keep Sign In</label>
                </div>
                <a href="forget.aspx" class="forget">forget password?</a>
            </div>
            <!-- End sign in div -->
                    <label for="keep">

            <asp:Button ID="login_btn" runat="server" Text="Log In" OnClick="login_btn_Click" />
            </label>
&nbsp;<div class="or">
                <p>OR</p>
            </div>
            <!-- images Links -->
            <div class="link_imgs">
                <a href="#">
                    <img src="Images/google.png" alt="Google" /></a>
                <a href="#">
                    <img src="Images/facebook.png" alt="Facebook" /></a>
                <a href="#">
                    <img src="Images/twitter.png" alt="X" /></a>
                <a href="#">
                    <img src="Images/github.png" alt="Github" /></a>
            </div>
            <!-- end images links -->
            <!--  -->
            <p class="sing_up_link">
                Not a member ? <a href="Sign up.aspx">Sign Up Now</a>
            </p>
        </form>
    </section>
    <!-- End Seciton Log In -->
</body>
</html>
