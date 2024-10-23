<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Card.aspx.cs" Inherits="Final_Project.Card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="icon" href="Images/shoppingcart_compra_12833.ico" type="image/x-icon" />

    <title>Cart</title>
    <style type="text/css">
        body{
            background:url("Images/pngtree-shopping-cart-with-electronics-and-computer-parts-picture-image_2729869.jpg") fixed no-repeat;
            background-size:cover;

        }
        .auto-style1 {
            width: 44px;
            height: 45px;
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
        *{
            margin:0px;
            padding:0px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">

        <asp:GridView ID="table" runat="server" class="table">
            <EditRowStyle ForeColor="White" Font-Names="Verdana" />
            <HeaderStyle ForeColor="White" Font-Names="Verdana" />
            <RowStyle ForeColor="White" />
        </asp:GridView>

        <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Item To Be Deleted"></asp:Label>

        <asp:TextBox ID="deleted_item" runat="server" BorderStyle="Solid"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="Delete" BorderStyle="None" Font-Bold="True" OnClick="Button1_Click" CssClass="button" ForeColor="Red" />
        <p>
        <asp:Button ID="Button2" runat="server" Text="Back To Shopping" BorderStyle="None" Font-Bold="True" ForeColor="White" OnClick="Button2_Click" CssClass="button" />
        </p>
        <p>
        <asp:Button ID="Button3" runat="server" Text="Go To Payment" BorderStyle="None" Font-Bold="True" ForeColor="White" OnClick="Button3_Click" CssClass="button" />
        </p>
        <p>
        <img src="Images/money.png" class="auto-style1" /><asp:Label ID="Label2" runat="server" Text="Total" Font-Bold="True" Font-Size="X-Large" ForeColor="#00CC66"></asp:Label>
        </p>
    </form>
</body>
</html>
