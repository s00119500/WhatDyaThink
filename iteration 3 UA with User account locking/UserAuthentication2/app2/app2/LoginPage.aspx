<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage1.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="app2.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>
                <asp:Label Text="Name" runat="server" /></td>
            <td>
                <asp:TextBox runat="server" ID="txtbxName" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFieldValidatortxtbxName" runat="server" ErrorMessage="Please enter a Name" ControlToValidate="txtbxName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Password" runat="server" /></td>
            <td>
                <asp:TextBox runat="server" ID="txtbxPassword" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFieldValidatortxtbx" runat="server" ErrorMessage="Please enter a Password" ControlToValidate="txtbxPassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button Text="Login" ID="btnLogin" OnClick="btnLogin_Click" runat="server" /></td>
        </tr>
        <tr>
            <td><a href="/Register/Register.aspx">click here to register</a></td>
        </tr>
        <tr>
            <td>
                <p><a href="/Register/testPage.aspx">Test Page</a> that shows users in User_tbl</p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="" ID="lblError" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
