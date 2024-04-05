<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shipinng.aspx.cs" Inherits="shipinng" MasterPageFile="~/client.master" StylesheetTheme="MyTheme" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<style type="text/css">
        .auto-style1 {
        width: 219px;
        text-align: right;
    }
    .auto-style3 {
        font-size: x-large;
    }
    .auto-style4 {
        text-align: center;
    }
    .auto-style5 {
        width: 100%;
        height: 399px;
    }

    .auto-style6 {
        font-size: x-large;
        text-align: center;
        height: 104px;
    }
    .auto-style7 {
        text-align: left;
    }
    </style>

    <div id="shipping">
        <table class="auto-style5">
            <tr>
                <td class="auto-style4" colspan="2">
                    <h1>Shipping</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Name :" CssClass="auto-style3"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="nm" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Address :" CssClass="auto-style3"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="add" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Email Id :" CssClass="auto-style3"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="email" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Phone no :" CssClass="auto-style3"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="mno" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Payment Mode :" CssClass="auto-style3"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:RadioButton ID="cash" runat="server" Text="cash" CssClass="auto-style3" Checked="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
            </div>

      </asp:Content>