<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dizi.aspx.cs" Inherits="Jquery.Dizi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src ="jquery-2.1.4.js"></script>
    <script type="text/javascript">
        var sayilar = [1, 2, 3, 4, 5];
        $(document).ready(function () {
            jQuery.each(sayilar, function (index, deger) {
                $("#sonuc").append("Sayı", index, " = ", deger, "<br/>");
            });
        });
    </script>
</head>
<body>
    <div id ="sonuc"></div>
</body>
</html>
