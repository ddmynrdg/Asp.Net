<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="ValidationSummary.UyeOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Eposta :<asp:TextBox ID="txbEposta" runat="server"></asp:TextBox>
        <br />
        Şifre :<asp:TextBox ID="txbSifre" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rqfvEposta" runat="server" ControlToValidate="txbEposta" ErrorMessage="Eposta zorunludur." Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="rqfvSifre" runat="server" ControlToValidate="txbSifre" ErrorMessage="Şifre alanını doldurun" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btKaydol" runat="server" Text="Kaydol" />
        <br />
        <asp:ValidationSummary ID="vlsUyeOl" runat="server" />
    
    </div>
    </form>
</body>
</html>
