<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ElemanErisim.aspx.cs" Inherits="JavascriptExc.ElemanErisim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <div id="eleman">
       Didem Yanrdağ
   </div>
    <div>
        <script type ="text/javascript">
            var divici = document.getElementById("eleman");
            alert(divici.innerHTML);
        </script>
    
    </div>
</body>
</html>
