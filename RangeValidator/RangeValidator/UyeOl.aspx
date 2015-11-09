<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="RangeValidator.UyeOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Doğum Yılınız:
        <asp:TextBox ID="txbDogumYil" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:RangeValidator ID="rnvDogumYil" runat="server" ControlToValidate="txbDogumYil" ErrorMessage="Geçerli bir yıl yazın" MaximumValue="2015" MinimumValue="1920"></asp:RangeValidator>
    
    </div>
    </form>
</body>
</html>
