<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dell.aspx.cs" Inherits="p" MasterPageFile="~/client.master" StylesheetTheme="MyTheme" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            text-align: right;
            margin-left: 160px;
        }
        .auto-style6 {
        font-size: x-large;
    }
    .auto-style7 {
        font-size: large;
    }
        </style>
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1"  HorizontalAlign="Center" RepeatDirection="Horizontal" RepeatColumns="2">
            <HeaderTemplate>
                <h1 class="auto-style1">Dell</h1>
            </HeaderTemplate>
            <ItemTemplate>
                <div> 
                <table  id="show">
                    <tr>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                   
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/details.aspx?pid="+Eval("pid")%>' CssClass="auto-style6">
               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img") %>' Height="150" Width="150"/>
                </asp:HyperLink>
                        </td>
                        <td>

                            <asp:Label ID="Label1" runat="server" Text="Brand Name :" CssClass="auto-style7"></asp:Label>
                            <asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' CssClass="auto-style7" />
                            <br class="auto-style7" />
                            <asp:Label ID="Label2" runat="server" Text="Prise :" CssClass="auto-style7"></asp:Label>
                            <asp:Label ID="PriseLabel" runat="server" Text='<%# Eval("Prise") %>' CssClass="auto-style7" />

                        </td>
                    </tr>
                
                   <tr>
                       <td colspan="2" align="center">
                <asp:Button ID="addcart" runat="server" Text="View details" CssClass="button" Width="158px" PostBackUrl='<%# "~/details.aspx?pid="+Eval("pid")%>'/>
                           </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">&nbsp;</td>
                    </tr>
               </table>
                    </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csmydb %>" SelectCommand="SELECT * FROM [product] where cid=1" ProviderName="<%$ ConnectionStrings:csmydb.ProviderName %>"></asp:SqlDataSource>
    </div>
    </asp:Content>