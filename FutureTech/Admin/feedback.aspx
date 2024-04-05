<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Admin_feed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="fid" DataSourceID="SqlDataSource1" HorizontalAlign="Center" OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal">
        <ItemTemplate>
            fid:
            <asp:Label ID="fidLabel" runat="server" Text='<%# Eval("fid") %>' />
            <br />
            username:
            <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            message:
            <asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
            <br />
            <asp:Button ID="Delete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("[fid]") %>' Text="Delete" />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csmydb %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
</asp:Content>

