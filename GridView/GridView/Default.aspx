<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridView.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetOrnekConnectionString %>" SelectCommand="SELECT * FROM [IsIlani]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IsIlaniId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="IsIlaniId" HeaderText="IsIlaniId" InsertVisible="False" ReadOnly="True" SortExpression="IsIlaniId" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                <asp:BoundField DataField="YayinlamaTarihi" HeaderText="YayinlamaTarihi" SortExpression="YayinlamaTarihi" />
                <asp:BoundField DataField="BitisTarihi" HeaderText="BitisTarihi" SortExpression="BitisTarihi" />
                <asp:BoundField DataField="FirmaResim" HeaderText="FirmaResim" SortExpression="FirmaResim" />
                <asp:BoundField DataField="FirmaAdi" HeaderText="FirmaAdi" SortExpression="FirmaAdi" />
                <asp:DynamicField DataField="YayindaMi" HeaderText="YayindaMi" SortExpression="YayindaMi"></asp:DynamicField>
                <asp:HyperLinkField DataNavigateUrlFields="IsIlaniId" DataNavigateUrlFormatString="Ilan.aspx?id={0}" DataTextField="Baslik" />
                <asp:ImageField DataImageUrlField="FirmaResim">
                </asp:ImageField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
