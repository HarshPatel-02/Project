<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insert.aspx.cs" Inherits="insert" StylesheetTheme="MyTheme"  MasterPageFile="~/Admin/admin.master"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .auto-style1 {
            text-align: right;
            width: 195px;
        }
        .auto-style5 {
            text-align: center;
            font-size: xx-large;
            height: 90px;
        }
        .auto-style6 {
            height: 26px;
            width: 263px;
        }
        .auto-style7 {
            width: 263px;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            width: 263px;
            text-align: left;
            margin-left: 40px;
        }
        .auto-style10 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            text-decoration: none;
            color: #ffffff;
            font-size: 20px;
            margin: 3px 5px;
            padding: 10px 10px;
            border-radius: 15px;
            background-color: #16437E;
            text-align: center;
        }
        .tt {
            resize:none
        }
    </style>

    <div id="insert">
        <asp:Label ID="lbl" runat="server"></asp:Label>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style5" colspan="2">
                        Insert</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="pidlbl" runat="server" Text="Leptop Id :" style="font-size: x-large"></asp:Label>
                    </td>
                    <td class="auto-style6">
        <asp:TextBox ID="pid" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="pnmlbl" runat="server" Text="Leptop Name :" style="font-size: x-large"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="pnm" runat="server" OnSelectedIndexChanged="pnm_SelectedIndexChanged" Height="30px" Width="81px">
                             <asp:ListItem Value="1" Text="Dell">Dell</asp:ListItem>
                            <asp:ListItem Value="2" Text="HP">HP</asp:ListItem>
                            <asp:ListItem Value="3" Text="Lenovo">Lenovo</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="pricelbl" runat="server" Text="Price :" style="font-size: x-large"></asp:Label>
                    </td>
                    <td class="auto-style7">
            <asp:TextBox ID="price" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="mnolbl" runat="server" Text="Model No :" style="font-size: x-large"></asp:Label>
                    </td>
                    <td class="auto-style7">
            <asp:TextBox ID="modelno" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="detaillbl" runat="server" Text="Details :" style="font-size: x-large"></asp:Label>
                    </td>
                    <td class="auto-style7">
            <asp:TextBox ID="details" runat="server"  TextMode="MultiLine" Width="100px" CssClass="tt" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="imglbl" runat="server" Text="Img :" style="font-size: x-large"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image1" runat="server" Height="69px" ImageUrl="~/img/" Width="98px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:Button ID="upload" runat="server" CssClass="auto-style10" Height="42px" OnClick="Button2_Click" Text="upload" />
                        <asp:TextBox ID="cid" runat="server" CssClass="txt" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" CssClass="button" />
                    </td>
                </tr>
            </table>
                </div>
  </asp:Content>