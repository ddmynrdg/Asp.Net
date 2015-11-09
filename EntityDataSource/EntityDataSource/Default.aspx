<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EntityDataSource.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=AspNetOrnekEntities" DefaultContainerName="AspNetOrnekEntities" EnableFlattening="False" EntitySetName="IsIlani">
        </asp:EntityDataSource>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IsIlaniId" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:BoundField DataField="IsIlaniId" HeaderText="IsIlaniId" ReadOnly="True" SortExpression="IsIlaniId" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Icerik" HeaderText="Icerik" SortExpression="Icerik" />
                <asp:BoundField DataField="YyinlamaTarihi" HeaderText="YyinlamaTarihi" SortExpression="YyinlamaTarihi" />
                <asp:BoundField DataField="BitisTarihi" HeaderText="BitisTarihi" SortExpression="BitisTarihi" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
