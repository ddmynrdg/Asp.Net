<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IlkSayfa.aspx.cs" Inherits="uyariMesaji.IlkSayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        KullaniciAdi:<asp:TextBox ID="kullaniciAdi" runat="server"></asp:TextBox>
        <br />
        Sifre:<asp:TextBox ID="sifre" runat="server" OnTextChanged="TextBox2_TextChanged" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
    </form>
</body>
</html>
