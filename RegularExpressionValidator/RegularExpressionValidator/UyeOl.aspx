<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeOl.aspx.cs" Inherits="RegularExpressionValidator.UyeOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Cep Telefonu:
        <asp:TextBox ID="txbCep" runat="server"></asp:TextBox>
        <br />
        <asp:RegularExpressionValidator ID="rgxvCep" runat="server" BackColor="White" ControlToValidate="txbCep" ErrorMessage="Geçerli bir cep numara yazın" Font-Bold="True" Font-Size="Small" ForeColor="#990000" ValidationExpression="^(05)[0-9][0-9] ([0-9]){7}$"></asp:RegularExpressionValidator>
    
    </div>
    </form>
</body>
</html>
