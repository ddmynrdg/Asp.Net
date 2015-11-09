<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ListView.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspNetOrnekConnectionString %>" SelectCommand="SELECT * FROM [IsIlani] ORDER BY [IsIlaniId] DESC"></asp:SqlDataSource>
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
                        <asp:Label ID="YyinlamaTarihiLabel" runat="server" Text='<%# Eval("YyinlamaTarihi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BitisTarihiLabel" runat="server" Text='<%# Eval("BitisTarihi") %>' />
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
                        <asp:TextBox ID="YyinlamaTarihiTextBox" runat="server" Text='<%# Bind("YyinlamaTarihi") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BitisTarihiTextBox" runat="server" Text='<%# Bind("BitisTarihi") %>' />
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
                        <asp:TextBox ID="YyinlamaTarihiTextBox" runat="server" Text='<%# Bind("YyinlamaTarihi") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="BitisTarihiTextBox" runat="server" Text='<%# Bind("BitisTarihi") %>' />
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
                        <asp:Label ID="YyinlamaTarihiLabel" runat="server" Text='<%# Eval("YyinlamaTarihi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BitisTarihiLabel" runat="server" Text='<%# Eval("BitisTarihi") %>' />
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
                                    <th runat="server">YyinlamaTarihi</th>
                                    <th runat="server">BitisTarihi</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
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
                        <asp:Label ID="YyinlamaTarihiLabel" runat="server" Text='<%# Eval("YyinlamaTarihi") %>' />
                    </td>
                    <td>
                        <asp:Label ID="BitisTarihiLabel" runat="server" Text='<%# Eval("BitisTarihi") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <br />
    
    </div>
    </form>
</body>
</html>
