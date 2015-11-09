<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeGiris.aspx.cs" Inherits="Uyelik.UyeGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Login ID="Login1" runat="server" CreateUserText="Üye Ol" CreateUserUrl="~/UyeOl.aspx" FailureText="Lütfen bilgilerinizi kontrol ediniz." Font-Italic="True" ForeColor="Black" LoginButtonText="Giriş Yap" PasswordLabelText="Şifre:" RememberMeText="Beni hatırla" TitleText="Üye Girişi" UserNameLabelText="Kullanıcı Adı:" UserNameRequiredErrorMessage="Şifrenizi yazınız">
        </asp:Login>
    
    </div>
    </form>
</body>
</html>
