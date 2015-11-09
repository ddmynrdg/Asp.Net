<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="CustomValidator.UyeOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">   
    <div>
     <asp:TextBox ID="txbKimlikNo" runat="server"></asp:TextBox>
        <br />
        <asp:CustomValidator ID="cmvKimlikNo" runat="server" ClientValidationFunction="KontrolTCKimlikNo" ControlToValidate="txbKimlikNo" ErrorMessage="Geçerli bir TC numarası yaz"></asp:CustomValidator>
    </div>
    </form>
    <script type="text/javascript">
        function KontrolTCKimlikNo(kontrol, args)
        {
            kimlikNo = args.Value;
            sonuc = false;

            if (kimlikNo.match("^[0-9]{11}$"))
            {
                indis0 = parseInt(kimlikNo.substr(0, 1)); 
                indis1 = parseInt(kimlikNo.substr(1, 1));
                indis2 = parseInt(kimlikNo.substr(2, 1));
                indis3 = parseInt(kimlikNo.substr(3, 1));
                indis4 = parseInt(kimlikNo.substr(4, 1));
                indis5 = parseInt(kimlikNo.substr(5, 1));
                indis6 = parseInt(kimlikNo.substr(6, 1));
                indis7 = parseInt(kimlikNo.substr(7, 1));
                indis8 = parseInt(kimlikNo.substr(8, 1));
                indis9 = parseInt(kimlikNo.substr(9, 1));
                indis10 = parseInt(kimlikNo.substr(10, 1));
                if ((indis0 + indis1 + indis2 + indis3 + indis4 + indis5 + indis6 + indis7 + indis8 +indis9) % 10 == indis10 && ((indis0 + indis2 + indis4 + indis6 + indis8) * 7 - (indis1 + indis3 + indis5 + indis7)) % 10 == indis9) 
                    sonuc = true;
            }
            args.IsValid = sonuc;
        }
    </script>
</body>
</html>
