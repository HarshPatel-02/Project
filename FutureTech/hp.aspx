<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hp.aspx.cs" Inherits="hp" MasterPageFile="~/client.master" StylesheetTheme="MyTheme" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    .auto-style4 {
        text-align: right;
    }
    </style>

    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal"  HorizontalAlign="Center" RepeatColumns="5">
            <HeaderTemplate>
                <h1 class="auto-style1">HP</h1>
            </HeaderTemplate>
            <ItemTemplate>
             
                <table id="show">
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="PriseLabel" runat="server" Text='<%# Eval("Prise") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/details.aspx?pid="+Eval("pid")%>'>
               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img") %>' Height="150" Width="150"/>
                </asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                       <td colspan="2">
                <asp:Button ID="addcart" runat="server" Text="View details" CssClass="button" Width="158px" PostBackUrl='<%# "~/details.aspx?pid="+Eval("pid")%>'/>
                           </td>
                </table>
                
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csmydb %>" SelectCommand="SELECT [pid], [Pname], [Prise], [Modelno], [Details], [cid], [img] FROM [product] where cid=2"></asp:SqlDataSource>
    
    </div>
    </asp:Content>