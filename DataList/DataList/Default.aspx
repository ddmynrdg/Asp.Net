<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataList.Default" %>

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
        <asp:DataList ID="DataList1" runat="server" BorderColor="#FF66FF" Caption="Ilanlar" DataKeyField="IsIlaniId" DataSourceID="SqlDataSource1" Font-Bold="True" RepeatColumns="2">
            <ItemTemplate>
                IsIlaniId:
                <asp:Label ID="IsIlaniIdLabel" runat="server" Text='<%# Eval("IsIlaniId") %>' />
                &nbsp;<asp:Label ID="BaslikLabel" runat="server" Font-Bold="True" Font-Size="16pt" ForeColor="#6699FF" Text='<%# Eval("Baslik") %>' />
                <br />
&nbsp;<asp:Label ID="IcerikLabel" runat="server" Font-Size="12pt" ForeColor="Black" Text='<%# Eval("Icerik") %>' />
                <br />
                &nbsp;<asp:Label ID="YyinlamaTarihiLabel" runat="server" Font-Size="12pt" ForeColor="Black" Text='<%# Eval("YyinlamaTarihi") %>' />
                <br />
                <asp:Label ID="BitisTarihiLabel" runat="server" Text='<%# Eval("BitisTarihi") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
    
    </div>
    </form>
</body>
</html>
