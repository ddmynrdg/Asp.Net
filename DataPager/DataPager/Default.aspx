<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataPager.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetOrnekConnectionString %>" SelectCommand="SELECT [IsIlaniId], [Baslik], [Icerik], [YayinlamaTarihi] FROM [IsIlani]"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IsIlaniId" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="IsIlaniIdLabel" runat="server" Text='<%# Eval("IsIlaniId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BaslikLabel" runat="server" Text='<%# Eval("Baslik") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IcerikLabel" runat="server" Text='<%# Eval("Icerik") %>' />
                    </td>
                    <td>
                        <asp:Label ID="YayinlamaTarihiLabel" runat="server" Text='<%# Eval("YayinlamaTarihi") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IsIlaniIdLabel1" runat="server" Text='<%# Eval("IsIlaniId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BaslikTextBox" runat="server" Text='<%# Bind("Baslik") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="IcerikTextBox" runat="server" Text='<%# Bind("Icerik") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="YayinlamaTarihiTextBox" runat="server" Text='<%# Bind("YayinlamaTarihi") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="BaslikTextBox" runat="server" Text='<%# Bind("Baslik") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="IcerikTextBox" runat="server" Text='<%# Bind("Icerik") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="YayinlamaTarihiTextBox" runat="server" Text='<%# Bind("YayinlamaTarihi") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="IsIlaniIdLabel" runat="server" Text='<%# Eval("IsIlaniId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BaslikLabel" runat="server" Text='<%# Eval("Baslik") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IcerikLabel" runat="server" Text='<%# Eval("Icerik") %>' />
                    </td>
                    <td>
                        <asp:Label ID="YayinlamaTarihiLabel" runat="server" Text='<%# Eval("YayinlamaTarihi") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">IsIlaniId</th>
                                    <th runat="server">Baslik</th>
                                    <th runat="server">Icerik</th>
                                    <th runat="server">YayinlamaTarihi</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="IsIlaniIdLabel" runat="server" Text='<%# Eval("IsIlaniId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BaslikLabel" runat="server" Text='<%# Eval("Baslik") %>' />
                    </td>
                    <td>
                        <asp:Label ID="IcerikLabel" runat="server" Text='<%# Eval("Icerik") %>' />
                    </td>
                    <td>
                        <asp:Label ID="YayinlamaTarihiLabel" runat="server" Text='<%# Eval("YayinlamaTarihi") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
        <br />
        <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="5">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                <asp:NumericPagerField />
                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
            </Fields>
        </asp:DataPager>
    
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
