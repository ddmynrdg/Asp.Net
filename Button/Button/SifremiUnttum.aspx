<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SifremiUnttum.aspx.cs" Inherits="Button.SifremiUnttum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Eposta Adresiniz:
            <asp:TextBox ID="txbEPosta" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btGonder" runat="server" Text="Gonder" Width="56px" OnClick="btGonder_Click" />
            <br />
            <asp:Label ID="lbMesaj" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
