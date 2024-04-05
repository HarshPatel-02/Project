<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/client.master"  StylesheetTheme="MyTheme"%>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div id="login">
         <table>
            <tr>
                <td class="auto-style10" colspan="3" style="font-size: 50px">
                    Login
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="unmlbl" runat="server" Text="User Name :" style="font-size: x-large"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="unmtxt" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="unmtxt" ErrorMessage="Please enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="pswlbl" runat="server" Text="Password :" style="font-size: x-large"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="pswtxt" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pswtxt" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="3">
                    <asp:Label ID="error" runat="server" ForeColor="Red" style="font-size: x-large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="3">
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Login" CssClass="button" />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" style="font-size: x-large" ForeColor="Blue" Font-Underline="false">New User Register Here</asp:HyperLink>
                    <br />
                </td>
            </tr>
            </table>
</div>
  </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 194px;
            text-align: center;
        }
        .auto-style6
        {
            text-align: center;
            }
        .auto-style7 {
            text-align: right;
            width: 535px;
            height: 58px;
        }
        .auto-style8 {
            width: 194px;
            text-align: center;
            height: 58px;
        }
        .auto-style9 {
            height: 58px;
        }
        .auto-style10 {
            text-align: center;
            height: 85px;
        }
    </style>
</asp:Content>
