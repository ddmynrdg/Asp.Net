<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TreeView.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" ShowCheckBoxes="All">
            <Nodes>
                <asp:TreeNode Text="Yetkililer" Value="Yetkililer">
                    <asp:TreeNode Text="Kullanıcı İşlemleri" Value="Kullanıcı İşlemleri">
                        <asp:TreeNode Text="Kullanıcı Düzenle" Value="Kullanıcı Düzenle"></asp:TreeNode>
                        <asp:TreeNode Text="Kullanıcı Sil" Value="Kullanıcı Sil"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="Sipariş İşlemleri" Value="Sipariş İşlemleri">
                        <asp:TreeNode Text="Sipariş Onayla" Value="Sipariş Onayla"></asp:TreeNode>
                        <asp:TreeNode Text="Siparişler" Value="Siparişler"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="Ürün İşlemleri" Value="Ürün İşlemleri">
                        <asp:TreeNode Text="Ürün Ekle" Value="Ürün Ekle"></asp:TreeNode>
                        <asp:TreeNode Text="Ürünler" Value="Ürünler"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
