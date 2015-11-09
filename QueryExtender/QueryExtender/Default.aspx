<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QueryExtender.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="EntityDataSource1" DataTextField="IsIlaniId" DataValueField="IsIlaniId">
            <asp:ListItem>Firma1</asp:ListItem>
            <asp:ListItem>Firma2</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IsIlaniId" DataSourceID="EntityDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="IsIlaniId" HeaderText="IsIlaniId" ReadOnly="True" SortExpression="IsIlaniId" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                <asp:BoundField DataField="YayinlamaTarihi" HeaderText="YayinlamaTarihi" SortExpression="YayinlamaTarihi" />
                <asp:BoundField DataField="BitisTarihi" HeaderText="BitisTarihi" SortExpression="BitisTarihi" />
                <asp:BoundField DataField="YayindaMi" HeaderText="YayindaMi" SortExpression="YayindaMi" />
                <asp:BoundField DataField="FirmaResim" HeaderText="FirmaResim" SortExpression="FirmaResim" />
                <asp:BoundField DataField="FirmaAdi" HeaderText="FirmaAdi" SortExpression="FirmaAdi" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=AspNetOrnekEntities" DefaultContainerName="AspNetOrnekEntities" EnableFlattening="False" EntitySetName="IsIlani" EntityTypeFilter="IsIlani">
        </asp:EntityDataSource>
        <br />
        <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="EntityDtaSource1">
            <asp:SearchExpression DataFields ="FirmaAdi" SearchType="Contains">
                <asp:ControlParameter ControlID="DropDownList" />
            </asp:SearchExpression>
        </asp:QueryExtender>
    
    </form>
</body>
</html>
