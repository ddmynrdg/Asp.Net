<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NavigationMenu.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Anasayfa" Value="Anasayfa"></asp:MenuItem>
                <asp:MenuItem Text="Hakkımda" Value="Hakkımda"></asp:MenuItem>
                <asp:MenuItem Text="Kategoriler" Value="Kategoriler">
                    <asp:MenuItem Text="Bilgisayar" Value="Bilgisayar"></asp:MenuItem>
                    <asp:MenuItem Text="Cep Telefonu" Value="Cep Telefonu"></asp:MenuItem>
                    <asp:MenuItem Text="Elektronik" Value="Elektronik"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="İletişim" Value="İletişim"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
