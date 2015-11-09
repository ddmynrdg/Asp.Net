<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Repeater.Default" %>

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
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div style ="background-color:white;">
                    İlan Başlığı : <%#Eval ("Baslik") %><br />
                    Yayınlanma Tarihi : <%#Eval ("YayinlanmaTarihi") %> <br />
                    Firma Adı : <%#Eval ("FirmaAdi") %>
                </div>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <div style ="background-color:lightgray;">
                    İlan Başlığı : <%#Eval ("Baslik") %><br />
                    Yayınlanma Tarihi : <%#Eval ("YayinlanmaTarihi") %> <br />
                    Firma Adı : <%#Eval ("FirmaAdi") %>
                </div>
            </AlternatingItemTemplate>
            <HeaderTemplate>
                <div style="background-color:black; color:white; font-size:24px;">
                    İş İlanları
                </div>
            </HeaderTemplate>
            <FooterTemplate>
                <div style="background-color:black; color:white; font-size:24px;">
                    İş İlanlarının Sonu
                </div>
            </FooterTemplate>
            <SeparatorTemplate>
               <hr />
            </SeparatorTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
