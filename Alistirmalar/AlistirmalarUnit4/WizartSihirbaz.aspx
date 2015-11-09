<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WizartSihirbaz.aspx.cs" Inherits="AlistirmalarUnit4.WizartSihirbaz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1"  OnFinishButtonClick="Wizard1_FinishButtoClick">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" title="Step 1">Adı Soyadı :
                    <asp:TextBox ID="txbAdSoyad" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" title="Step 2">Okul :
                    <asp:TextBox ID="txbOkul" runat="server"></asp:TextBox>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    
    </div>
    </form>
</body>
</html>
