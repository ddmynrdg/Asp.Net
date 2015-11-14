<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValueProvider.aspx.cs" Inherits="ModelBinding.ValueProvider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server"
            ItemType="ModelBinding.Urun"
            AutoGenerateColumns="false"
            SelectMethod="GetirUrunler">

            <Columns>
                <asp:BoundField DataField="UrunId" HeaderText="Ürün Kodu" />
                <asp:BoundField DataField="Ad" HeaderText="Ürün Adı" />
                <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
