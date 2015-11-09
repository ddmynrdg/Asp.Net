<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DetailsView.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sqdsGrid" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetOrnekConnectionString %>" SelectCommand="SELECT [IsIlaniId], [Baslik] FROM [IsIlani]"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="sqdsDetay" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetOrnekConnectionString %>" SelectCommand="SELECT * FROM [IsIlani] WHERE ([IsIlaniId] = @IsIlaniId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DetailsView1" Name="IsIlaniId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="IsIlaniId" DataSourceID="sqdsDetay" ForeColor="Black" GridLines="Vertical" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="IsIlaniId" HeaderText="IsIlaniId" InsertVisible="False" ReadOnly="True" SortExpression="IsIlaniId" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                <asp:BoundField DataField="YyinlamaTarihi" HeaderText="YyinlamaTarihi" SortExpression="YyinlamaTarihi" />
                <asp:BoundField DataField="BitisTarihi" HeaderText="BitisTarihi" SortExpression="BitisTarihi" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
