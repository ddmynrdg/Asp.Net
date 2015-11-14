<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Jquery.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-2.1.4.js"></script>
    <script type="text/javascript">
        var kullanici = {
            Ad: "Didem",
            Soyad: "Yanrdağ",
        isimGoster: function () {
            alert(kullanici.Ad + " " + kullanici.Soyad);
        }
        };
         kullanici.isimGoster();
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
