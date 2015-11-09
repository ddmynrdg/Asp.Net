<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostaGonder.aspx.cs" Inherits="EpostaGonderme.PostaGonder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <asp:Button ID="btGonders" runat="server" OnClick="Button1_Click" Text="Gonder" />
        <br />
        Kime:<asp:TextBox ID="txbKime" runat="server"></asp:TextBox>
        <br />
        Konu :<asp:TextBox ID="txbKonu" runat="server"></asp:TextBox>
        <br />
        Icerik :
        <asp:TextBox ID="txbIcerik" runat="server" Height="100px" ></asp:TextBox>
        </div>
    </form>
</body>
</html>
