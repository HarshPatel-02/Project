<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lenovo.aspx.cs" Inherits="lenovo" MasterPageFile="~/client.master"  StylesheetTheme="MyTheme" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>


    <div>
    
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center" RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                <h1 class="auto-style1">Lenovo</h1>
            </HeaderTemplate>
            <ItemStyle BackColor="#EFF3FB" />
            <ItemTemplate>
              
                Pname:
                <asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' />
                <br />
                Prise:
                <asp:Label ID="PriseLabel" runat="server" Text='<%# Eval("Prise") %>' />
                <br />
                
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/details.aspx?pid="+Eval("pid")%>'>
               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img") %>' Height="150" Width="150"/>
                </asp:HyperLink>
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csmydb %>" SelectCommand="SELECT [pid], [Pname], [Prise], [Modelno], [Details], [img], [cid] FROM [product] where cid=3"></asp:SqlDataSource>
    
    </div>
  </asp:Content>