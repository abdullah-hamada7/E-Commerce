<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign up.aspx.cs" Inherits="Final_Project.Sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up</title>
    <link rel="stylesheet" href="CSS/sign in.css" />
</head>
<body>
    <!-- Sectin Log Up -->
    <section class="login" style="padding-bottom: 30px">
        <form id="form1" runat="server" class="form">
            <label for="username" class="lbl">ID<asp:TextBox ID="id"
                placeholder="UserName"
                class="inp" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="id" ErrorMessage="ID is required" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            UserName</label> <%--            <input
                type="text"
                name="username"
                id="username"
                placeholder="UserName"
                class="inp" />--%>

            <asp:TextBox ID="username"
                placeholder="UserName"
                class="inp" runat="server"></asp:TextBox>
            <!-- ========================== -->
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <label for="email" class="lbl">Email</label>
            <%--            <input
                type="email"
                name="Email"
                id="email"
                placeholder="example@gmail.com"
                class="inp" />--%>

            <asp:TextBox ID="email"
                placeholder="example@gmail.com"
                class="inp" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <label for="pass" class="lbl">Password</label>
            <%--            <input
                type="password"
                name="Password"
                id="pass"
                placeholder="password"
                class="inp" />--%>

            <asp:TextBox ID="pass"
                placeholder="password"
                class="inp" runat="server" TextMode="Password"></asp:TextBox>
            <!-- Keep Sign In -->
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="confirm" ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
            <label for="pass" class="lbl">Confirm Password<asp:TextBox ID="confirm"
                placeholder="password"
                class="inp" runat="server" TextMode="Password" Width="490px"></asp:TextBox>
            </label>
            <div class="keep">
                <div>
                    <%-- <input type="checkbox" name="Keep" id="keep" />--%>

                    <asp:CheckBox ID="keep" runat="server"/>
                    <label for="keep">Keep Sign In</label>
                </div>
            </div>
            <!-- End sign in div -->
            <%--<input type="submit" value="Sign Up" id="login_btn" />--%>

            <asp:Button ID="login_btn" runat="server" Text="Sign Up" OnClick="login_btn_Click" />
            <p class="log_in_link">Return to <a href="Log in.aspx">Log In</a></p>
        </form>
    </section>
    <!-- End Seciton Log Up -->
</body>
</html>
