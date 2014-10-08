<%@ Page Title="" Language="C#" MasterPageFile="~/Start/LoginMaster.Master" AutoEventWireup="true" CodeBehind="LoginRegister.aspx.cs" Inherits="Iteration4.Start.LoginRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">
        <h1>Login & Register</h1>
    </div>
    <div class="container">
        <div>
        </div>
        <div class="pull-right">
            <div class="panel panel-default">
                <div class="panel-heading">New User ?</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <tr>
                            <td>
                                <asp:Label Text="Name" runat="server" /></td>
                            <td>
                                <input type="text" name="" runat="server" value="" id="txtbxRegisterName" placeholder="please enter a name" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Email" runat="server" /></td>
                            <td>
                                <input type="email" name="" runat="server" value="" id="txtbxRegisterEmail" placeholder="please enter your Email" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Password" runat="server" /></td>
                            <td>
                                <input type="password" name="" runat="server" value="" id="txtbxRegisterPassword" placeholder="please enter a password" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Confirm Passsword" runat="server" /></td>
                            <td>
                                <input type="password" name="" runat="server" value="" id="txtbxRegisterConfirmPassword" placeholder="please confirm your password" /></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Telephone" runat="server" /></td>
                            <td>
                                <input type="tel" name="" runat="server" value="" id="txtbxRegisterTelephone" placeholder="please enter a telephone number" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button Text="Register" CssClass="btn btn-success" runat="server" ID="btnRegister" OnClick="btnRegister_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
