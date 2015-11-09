<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LinqDataSource.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="LinqDataSource.OrnekClassesDataContext" EntityTypeName="" TableName="IsIlanis">
        </asp:LinqDataSource>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IsIlaniId" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="IsIlaniId" HeaderText="IsIlaniId" InsertVisible="False" ReadOnly="True" SortExpression="IsIlaniId" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                <asp:BoundField DataField="YyinlamaTarihi" HeaderText="YyinlamaTarihi" SortExpression="YyinlamaTarihi" />
                <asp:BoundField DataField="BitisTarihi" HeaderText="BitisTarihi" SortExpression="BitisTarihi" />
            </Columns>
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
