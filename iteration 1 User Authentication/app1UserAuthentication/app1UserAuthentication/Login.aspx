<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="app1UserAuthentication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label Text="Name" runat="server" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtbxName" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="Password" runat="server" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="txtbxPassword" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBox ID="chkbxRememberMe" Text="Remember Me" runat="server" /></td>
                    <td>
                        <asp:Button Text="Login" ID="btnLogin" runat="server" OnClick="btnLogin_Click" />
                    </td> 
                </tr>
                <tr>
                    <td><a href="register/Register.aspx">Register</a></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label Text="" ID="lblError" BackColor="White" ForeColor="Red" runat="server" />
                    </td>
                </tr> 
            </table>
        </div>
    </form>
</body>
</html>
