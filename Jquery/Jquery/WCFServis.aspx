<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WCFServis.aspx.cs" Inherits="Jquery.WCFServis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-2.1.4.js"></script>
    <script type="text/javascript">
        $.ajax({
            type: "GET",
            url: "KullaniciServis.svc.cs/IsimGetir",
            dataType: "json",
            success: function (data) {
                $("#isim").append(data);
            }
            });
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="isim"></div>
    </form>
</body>
</html>
