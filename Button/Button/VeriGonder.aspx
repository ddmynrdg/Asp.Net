<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VeriGonder.aspx.cs" Inherits="Button.VeriGonder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txbVeri" runat="server"></asp:TextBox>
        <asp:Button ID="btGonder" runat="server" Text="Gonder" PostBackUrl="~/VeriAl.aspx" />
    
    </div>
    </form>
</body>
</html>
