<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSSSinifi.aspx.cs" Inherits="CSS.CSSSinifi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .siyahbolge 
        {
            background-color:black;
            color:white;
            font-size:18px;
        }
        .button 
        {
            background-color:blue;
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="siyahbolge">
        Burası kara bölge.
    </div>
        <div>
            <asp:Button ID="btKaydet" runat="server" CssClass="button" Text="GONDER" />
        </div>
    </form>
</body>
</html>
