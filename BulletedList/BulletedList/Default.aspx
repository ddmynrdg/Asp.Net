<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BulletedList.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="UpperRoman">
            <asp:ListItem>Bilgisayar</asp:ListItem>
            <asp:ListItem>Ev Elektronigi</asp:ListItem>
            <asp:ListItem>Giyim</asp:ListItem>
            <asp:ListItem>Mücevher</asp:ListItem>
            <asp:ListItem>Takı</asp:ListItem>
            <asp:ListItem>Telefon</asp:ListItem>
        </asp:BulletedList>
    
    </div>
    </form>
</body>
</html>
