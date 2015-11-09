<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeKayit.aspx.cs" Inherits="CustomValidator.UyeKayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
    <div>
        Türkiye&#;nin başkenti neresidir? 
        <asp:TextBox ID="txbCevap" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="cmvCevap" runat="server" ControlToValidate="txbCevap" ErrorMessage="Cevabınız yanlış" OnServerValidate="cmvCevap_ServerValidate"></asp:CustomValidator>
        <br /> 
    </div>
        <asp:Button ID="btKaydol" runat="server" Text="Kaydol" />
          
    </form>
</body>
</html>
