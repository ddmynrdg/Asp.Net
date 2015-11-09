<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="RequiredFieldValidator.UyeOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Kullanıcı Adı :
        <asp:TextBox ID="txbKullaniciAd" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rqfvKullaniciAd" runat="server" ControlToValidate="txbKullaniciAd" ErrorMessage="Kullanıcı adınızı boş bırakmışsınız" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
    
    </div>
    </form>
</body>
</html>
