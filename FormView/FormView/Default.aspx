<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FormView.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetOrnekConnectionString %>" DeleteCommand="DELETE FROM [Kategori] WHERE [KategoriId] = @KategoriId" InsertCommand="INSERT INTO [Kategori] ([Ad]) VALUES (@Ad)" SelectCommand="SELECT * FROM [Kategori]" UpdateCommand="UPDATE [Kategori] SET [Ad] = @Ad WHERE [KategoriId] = @KategoriId">
            <DeleteParameters>
                <asp:Parameter Name="KategoriId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ad" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ad" Type="String" />
                <asp:Parameter Name="KategoriId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="KategoriId" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                KategoriId:
                <asp:Label ID="KategoriIdLabel1" runat="server" Text='<%# Eval("KategoriId") %>' />
                <br />
                Ad:
                <asp:TextBox ID="AdTextBox" runat="server" Text='<%# Bind("Ad") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Ad:
                <asp:TextBox ID="AdTextBox" runat="server" Text='<%# Bind("Ad") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                KategoriId:
                <asp:Label ID="KategoriIdLabel" runat="server" Text='<%# Eval("KategoriId") %>' />
                <br />
                Ad:
                <asp:Label ID="AdLabel" runat="server" Text='<%# Bind("Ad") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
