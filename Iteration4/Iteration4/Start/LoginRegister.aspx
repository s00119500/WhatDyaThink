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
                            <td>
                                <asp:Label Text="" ID="lblRegisterName" runat="server" />
                                <%--<asp:RequiredFieldValidator ID="RFieldValidatortxtbxName" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtbxRegisterName"></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Email" runat="server" /></td>
                            <td>
                                <input type="email" name="" runat="server" value="" id="txtbxRegisterEmail" placeholder="please enter your Email" /></td>
                            <td>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtbxRegisterEmail"></asp:RequiredFieldValidator>--%>
                                <asp:Label Text="" ID="lblErrorRegisterEmail" runat="server" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail"
                                    runat="server" ErrorMessage="*" ControlToValidate="txtbxRegisterEmail"
                                    Display="Dynamic"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                </asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Password" runat="server" /></td>
                            <td>
                                <input type="password" name="" runat="server" value="" id="txtbxRegisterPassword" placeholder="please enter a password" /></td>
                            <td>
                                <asp:Label Text="" ID="lblErrorRegisterPassword" runat="server" />
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtbxRegisterPassword"></asp:RequiredFieldValidator>--%>
                                <asp:CompareValidator ErrorMessage="*" ControlToValidate="txtbxRegisterPassword" ControlToCompare="txtbxRegisterConfirmPassword" Operator="Equal" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Confirm Passsword" runat="server" /></td>
                            <td>
                                <input type="password" name="" runat="server" value="" id="txtbxRegisterConfirmPassword" placeholder="please confirm your password" /></td>
                            <td>
                                <asp:Label Text="" ID="lblErrorRegisterConfirmPassword" runat="server" />
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtbxRegisterConfirmPassword"></asp:RequiredFieldValidator>--%>
                                <asp:CompareValidator ErrorMessage="*" ControlToValidate="txtbxRegisterConfirmPassword" ControlToCompare="txtbxRegisterPassword" Operator="Equal" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="Telephone" runat="server" /></td>
                            <td>
                                <input type="tel" name="" runat="server" value="" id="txtbxRegisterTelephone" placeholder="please enter a telephone number" /></td>
                            <td>
                                <asp:Label Text="" ID="lblErrorRegisterTelephone" runat="server" />
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtbxRegisterTelephone"></asp:RequiredFieldValidator>--%>
                                <asp:RegularExpressionValidator
                                    ControlToValidate="txtbxRegisterTelephone"
                                    EnableClientScript="false"
                                    ValidationExpression="\d{10}"
                                    ErrorMessage="*"
                                    runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button Text="Register" CssClass="btn btn-success" runat="server" ID="btnRegister" OnClick="btnRegister_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label Text="" ForeColor="Red" ID="lblErrorRegister" runat="server" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
