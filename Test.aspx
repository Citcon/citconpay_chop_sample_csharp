<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form  runat="server">
        URL: <br /><br />
        <asp:TextBox ID="tbURL" runat="server" Width="500px" /><br /><br />
        Authorization Token: <br /><br />
        <asp:TextBox ID="tbAuthToken" runat="server" Width="500px" /><br /><br />
        Vendor: <br /><br />
        <asp:TextBox ID="tbVendor" runat="server" Width="300px" /><br /><br />
        Amount: <br /><br />
        <asp:TextBox ID="tbAmount" runat="server" /><br /><br />
        Currency: <br /><br />
        <asp:TextBox ID="tbCurrency" runat="server" Text="USD" /><br /><br />
        Reference: <br /><br />
        <asp:TextBox ID="tbReference" runat="server" Text="" Width="300px" /><br /><br />
        ipn_url: <br /><br />
        <asp:TextBox ID="tbIPNURL" runat="server" Width="500px" /><br /><br />
        callback_url_success: <br /><br />
        <asp:TextBox ID="tbCallBackURLSuccess" runat="server" Width="500px" /><br /><br />
        callback_url_failure: <br /><br />
        <asp:TextBox ID="tbCallBackURLFailure" runat="server" Width="500px" /><br /><br />

        <asp:Button ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" runat="server" />
    </form>
</body>
</html>
