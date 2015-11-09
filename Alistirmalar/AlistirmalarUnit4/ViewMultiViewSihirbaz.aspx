<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewMultiViewSihirbaz.aspx.cs" Inherits="AlistirmalarUnit4.ViewMultiViewSihirbaz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View4" runat="server">
                Tüm bilgiler kaydedildi.
            </asp:View>
            <asp:View ID="View3" runat="server">
                &nbsp;İş Deneyimi :
                <asp:TextBox ID="txbIsDenym" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btKayitIB" runat="server" OnClick="btKayitIB_Click" Text="Ileri" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                Okul:
                <asp:TextBox ID="txbOkul" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btKayitEB" runat="server" OnClick="btKayitEB_Click" Text="Ileri" />
            </asp:View>
            <asp:View ID="View1" runat="server">
                Adı Soyadi:
                <asp:TextBox ID="txbAdiSoyadi" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btKayitKB" runat="server" OnClick="btKayitKB_Click" Text="Ileri" />
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
