<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSSDegistir.aspx.cs" Inherits="Jquery.CSSDegistir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-2.1.4.js"></script>
    <script type ="text/javascript">
        $(document).ready(function ()
        {
            $("#ad").css({
                background: "blue",
                color: "white",
                textAlign: "center",
                width: "300px",
                fontSize: "32px",
                });
        });
    </script>
</head>
<body>
    <div id="ad">Didem Yanardağ</div>
</body>
</html>
