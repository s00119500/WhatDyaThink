<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="app2.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Index</h1>
    <br />
    <br />
    <br />
    <asp:Button Text="Log Out" ID="btnLogOut" OnClick="btnLogOut_Click" runat="server" />

</asp:Content>
