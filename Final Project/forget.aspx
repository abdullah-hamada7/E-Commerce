<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="Final_Project.forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>

        label {
            margin-right: 140px;
        }

        input {
            margin-right: 20px;
        }

        .button {
            background-color: darkorange;
            color: white;
            padding: 5px 7px;
            border: none;

        }
        .pass{
            margin-right: 110px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
<h2>Personal Details</h2>

        <label for="firstname" >FirstName</label>&nbsp;<label for="LastName">LastName</label><label for="Email">EmailAddress</label>&nbsp;<br>
    &nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="email"></asp:TextBox>

    <br>
    <br>
    &nbsp;<asp:Button ID="Button1" CssClass="button" runat="server" Text="Save Change" OnClick="Button1_Click" />
<br>
        <br />
<hr>
        <br />
    <h2>Change Password</h2>
    <br>
    <label for="oldpassword" class="pass">Old Password</label>
    <label for="newpassword" class="pass">New Password</label>
    <label for="againnewpassword" class="pass">Confirm New Password</label>

    <br>
    &nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password doesn't match" ForeColor="Red"></asp:CompareValidator>
    <br>
    <br>

    &nbsp;<asp:Button ID="Button2" CssClass="button" runat="server" Text="Save Change" OnClick="Button2_Click" />
        <br />
        <br />
        <br />
            &nbsp;<asp:Button ID="Button3" CssClass="button" runat="server" Text="Back To Login" OnClick="Button3_Click"/> 

    </form>
</body>
</html>
