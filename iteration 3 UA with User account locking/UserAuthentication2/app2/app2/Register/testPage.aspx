<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage1.Master" AutoEventWireup="true" CodeBehind="testPage.aspx.cs" Inherits="app2.testPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceID">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="RetryAttempts" HeaderText="RetryAttempts" SortExpression="RetryAttempts" />
        <asp:BoundField DataField="IsLocked" HeaderText="IsLocked" SortExpression="IsLocked" />
        <asp:BoundField DataField="LockedDateTime" HeaderText="LockedDateTime" SortExpression="LockedDateTime" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceID" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users_tbl]"></asp:SqlDataSource>
</asp:Content>
