<%@ Page Title="" Language="C#" Theme="MyTheme"  MasterPageFile="~/client.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 100px;
            text-align: center;
        }
        .auto-style2 {
            text-align: right;
            height:70px;
        }
        .auto-style3 {
            text-align: right;
            height: 26px;
        }
        .auto-style4 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div id="feedback">
       <table style="width:100%;">
        <tr>
            <td class="auto-style1" colspan="2" style="text-align: center; font-size: 40px;">Feedback</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblunm" runat="server" Text="User Name :" style="font-size: x-large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="unmtxt" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblemail" runat="server" Text="Email :" style="font-size: x-large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="emailtxt" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblmsg" runat="server" Text="Message :" style="font-size: x-large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="msgtxt" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td>
                <asp:Label ID="error" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td  colspan="2" style="text-align: center">
                <asp:Button ID="submit" runat="server" Text="Submit" CssClass="button" OnClick="submit_Click" />
&nbsp;&nbsp;
                <asp:Button ID="resert" runat="server" Text="Reset" CssClass="button" />
            </td>
        </tr>
    </table>
     </div>
</asp:Content>


