<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSSclassDegistir.aspx.cs" Inherits="Jquery.CSSclassDegistir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery-2.1.4.js"></script>
    <style type="text/css">
        .beyaz 
        {
            background-color:white;
            color:black;
            font-size:32px;
            width:400px;
        }
        .siyah 
        {
            background-color:blue;
            color:black;
            font-size:32px;
            width:400px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btCSSDegistir").click(function () {
                $("#ad").removeClass("beyaz");
                $("#ad").addClass("siyah");
            });
        });
    </script>
</head>
<body>
    <button id="btCSSDegistir">CSS Değiştir</button>
    <div id ="ad" class="beyaz">Didem YANARDAĞ</div>
</body>
</html>
