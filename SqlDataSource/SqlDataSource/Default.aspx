<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SqlDataSource.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetOrnekConnectionString %>" DeleteCommand="DELETE FROM [IsIlani] WHERE [IsIlaniId] = @IsIlaniId" InsertCommand="INSERT INTO [IsIlani] ([Baslik], [Icerik], [YyinlamaTarihi], [BitisTarihi]) VALUES (@Baslik, @Icerik, @YyinlamaTarihi, @BitisTarihi)" SelectCommand="SELECT * FROM [IsIlani] ORDER BY [IsIlaniId] DESC" UpdateCommand="UPDATE [IsIlani] SET [Baslik] = @Baslik, [Icerik] = @Icerik, [YyinlamaTarihi] = @YyinlamaTarihi, [BitisTarihi] = @BitisTarihi WHERE [IsIlaniId] = @IsIlaniId">
            <DeleteParameters>
                <asp:Parameter Name="IsIlaniId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Icerik" Type="String" />
                <asp:Parameter Name="YyinlamaTarihi" Type="DateTime" />
                <asp:Parameter Name="BitisTarihi" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Icerik" Type="String" />
                <asp:Parameter Name="YyinlamaTarihi" Type="DateTime" />
                <asp:Parameter Name="BitisTarihi" Type="DateTime" />
                <asp:Parameter Name="IsIlaniId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IsIlaniId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="IsIlaniId" HeaderText="IsIlaniId" InsertVisible="False" ReadOnly="True" SortExpression="IsIlaniId" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                <asp:BoundField DataField="YyinlamaTarihi" HeaderText="YyinlamaTarihi" SortExpression="YyinlamaTarihi" />
                <asp:BoundField DataField="BitisTarihi" HeaderText="BitisTarihi" SortExpression="BitisTarihi" />
            </Columns>
        </asp:GridView>
    <div>
    
    </div>
    </form>
</body>
</html>
