<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebMetod_Javascript.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID ="ScriptManager1" EnablePageMethods="true" runat="server"></asp:ScriptManager>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick=" GosterHosgeldinMesaji(); return false;" />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <script type="text/javascript">
            function GosterHosgeldinMesaji() {
                var ad = document.getElementById('<%=TextBox1.ClientID%>').value;
                PageMethods.HosgeldinMesaji(ad, işlemBasarili, islemHatali);
                function islemBsarilimi(sonuc) {
                    elert(sonuc);
                }
                function islemHatalimi (sonuc)
                {
                    alert('beklenmedik bir hata ile karşılaştık.');
                }
            }
        </script>
    </form>
</body>
</html>
