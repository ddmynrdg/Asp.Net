<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DinamikForm.aspx.cs" Inherits="BulletedList.DinamikForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Kategori.xml"></asp:XmlDataSource>
        <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="Ad" DataValueField="Deger">
        </asp:BulletedList>
    <div>
    
    </div>
    </form>
</body>
</html>
