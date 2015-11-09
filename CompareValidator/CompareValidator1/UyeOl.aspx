<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="CompareValidator1.UyeOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 100px">
    <form id="form1" runat="server">
        <p>
        Şifreniz:
        <asp:TextBox ID="txbSifre" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
        Şifre Tekrar :
            <asp:TextBox ID="txbSifreT" runat="server" TextMode="Password"></asp:TextBox>
        &nbsp
        <asp:CompareValidator ID="cmvSifre" runat="server" ErrorMessage="Şifreler eşleşmiyor" ControlToCompare="txbSifreT" ControlToValidate="txbSifre"></asp:CompareValidator>
    </p>
 
    </form>
</body>
</html>
