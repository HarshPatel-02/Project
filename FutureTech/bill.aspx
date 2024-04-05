<%@ Page Title="" Language="C#" MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill"  StylesheetTheme="MyTheme"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" HorizontalAlign="Center" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">

        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />

        <HeaderTemplate>
            <h1 class="auto-style4">Bill</h1>
        </HeaderTemplate>
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            &nbsp;<table style="width:100%;">
               <%-- <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="bill_id :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("bill_id") %>'></asp:Label>
                    </td>
                   
                </tr>--%>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="item_id :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("item_id") %>'></asp:Label>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="name : "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </td>
                   
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="price : "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </td>
                 
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="quantity :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                    </td>
               
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label13" runat="server" Text="total :"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="date : "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("date") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label15" runat="server" Text="Grand Total :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbltotal" runat="server"></asp:Label>

    </asp:Content>

