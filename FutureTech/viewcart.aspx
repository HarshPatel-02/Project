<%@ Page Title="" Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Viewcart.aspx.cs" Inherits="Viewcart"  StylesheetTheme="MyTheme"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            height: 23px;
            text-align: right;
        }
        .auto-style7 {
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" HorizontalAlign="Center" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <FooterTemplate>
            <table style="width:100%;">
               
                <tr>
                    
                    <td align="center">
                        <asp:Button ID="payment" runat="server" OnClick="payment_Click" Text="Payment" CssClass="button" Width="117px" />
                    </td>
                </tr>
                
                   
            </table>
        </FooterTemplate>
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <h1 class="auto-style3">Cart</h1>
        </HeaderTemplate>
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>

            <table style="width:100%;">
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="Label7" runat="server" Text="item_id :"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("item_id") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server" Text="name :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label9" runat="server" Text="price :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label10" runat="server" Text="quantity :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label11" runat="server" Text="amount :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label12" runat="server" Text="image :"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="59px" ImageUrl='<%# Eval("image") %>' Width="96px" />
                    </td>
                </tr>
                
                <tr>
                    <td class="auto-style7" colspan="2">
                        <asp:Button ID="Delete" runat="server" CommandName="Delete" Text="Delete" CommandArgument='<%# Eval("[item_id]") %>' />
                    </td>
                </tr>
                
            </table>
           
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SelectedItemTemplate>
            <asp:Label ID="lbltotal" runat="server"></asp:Label>
        </SelectedItemTemplate>
    </asp:DataList>
    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lbltotal" runat="server"></asp:Label>
    </asp:Content>

