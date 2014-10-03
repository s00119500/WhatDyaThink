<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="app2.Register.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Register</h1>
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
                <asp:Label Text="Email" runat="server" /></td>
            <td>
                <asp:TextBox runat="server" ID="txtbxEmail" /></td>
        </tr>
        <tr>
            <td>
                <asp:Button Text="Register" runat="server" ID="btnRegister" OnClick="btnRegister_Click1" /></td>
            <td>
                <%--<input type="reset" runat="server" name="" id="btnReset" value="Reset" />--%>
                <asp:Button Text="Clear" ID="btnClear" OnClick="btnClear_Click" runat="server" />
            </td>
        </tr>
    </table>
    <asp:Label ID="lblError" Text="" runat="server" />
</asp:Content>
