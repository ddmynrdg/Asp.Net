<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonClick.aspx.cs" Inherits="Jquery.ButtonClick" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-2.1.4.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btMerhaba").click(
                function () {
                    alert("Hello World!!!");
                });
        });

    </script>
</head>
<body>
    <button id ="btMerhaba">Hello</button>
</body>
</html>
