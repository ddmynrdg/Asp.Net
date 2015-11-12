<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Yukleniyor.aspx.cs" Inherits="Ajax.Yukleniyor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        </asp:UpdatePanel>
        <br />
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <progressTemplate>
                Veriler yükleniyor, lütfen bekleyiniz
            </progressTemplate>
        </asp:UpdateProgress>
        
    </div>
    </form>
</body>
</html>
