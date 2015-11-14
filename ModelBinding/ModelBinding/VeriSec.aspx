<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VeriSec.aspx.cs" Inherits="ModelBinding.VeriSec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" 
            AutoGenerateColumns="false" 
            SelectMethod="GetirKategoriler" 
            ItemType="ModelBinding.Kategori">
            <Columns>
                <asp:BoundField DataField="KatagoriId" HeaderText="Kategori Kodu" /> 
                <asp:BoundField DataField="Ad" HeaderText="Kategori Ad" />
                <asp:TemplateField HeaderText="Ürün Sayısı">
                    <ItemTemplate>
                        <%#Item.Urun.Count %>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
