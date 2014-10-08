<%@ Page Title="" Language="C#" MasterPageFile="~/Start/LoginMaster.Master" AutoEventWireup="true" CodeBehind="testPage.aspx.cs" Inherits="Iteration4.Test.testPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:BoundField DataField="retryAttempts" HeaderText="retryAttempts" SortExpression="retryAttempts" />
            <asp:BoundField DataField="isLocked" HeaderText="isLocked" SortExpression="isLocked" />
            <asp:BoundField DataField="lockedTimeStamp" HeaderText="lockedTimeStamp" SortExpression="lockedTimeStamp" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WhatDyaThinkSQLDatabaseConnectionString %>" SelectCommand="SELECT * FROM [Users_tbl]"></asp:SqlDataSource>
</asp:Content>
