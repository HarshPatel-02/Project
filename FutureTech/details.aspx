<%@ Page Language="C#" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" MasterPageFile="~/client.master" StylesheetTheme="MyTheme" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="test" runat="server" Visible="False"></asp:Label>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
            text-align: left;
        }
        .auto-style2
        {
            width: 310px;
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            height: 23px;
            width: 156px;
            text-align: right;
        }
        .auto-style6 {
            width: 156px;
        }
        .auto-style7 {
            width: 156px;
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
        }
        </style>

    <div>
    
        <table style="width:70%;" id="details">
           <tr>
               <td class="auto-style3" colspan="3">

                   <h1>Leptop Details</h1>

               </td>
           </tr>
             <tr>
                <td class="auto-style2" rowspan="8">
                    <asp:Image ID="Image1" runat="server" Height="182px" Width="234px" />
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="l1" runat="server" Text="Item_id :"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="itemid" runat="server"></asp:Label>
                </td>
                <td>

                    <asp:Label ID="Label9" runat="server" Text="Details :"></asp:Label>

                </td>
                 <td>

                     &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" align>
                    <asp:Label ID="l2" runat="server" Text="Name :"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="name" runat="server"></asp:Label>
                </td>
                <td rowspan="4">

                    <%--<asp:Label ID="lblde" runat="server"></asp:Label>--%>

                    <asp:TextBox ID="lblde" runat="server" TextMode="MultiLine" CssClass="tt" Height="255px" ReadOnly="True" Width="300px"></asp:TextBox>

                </td>

            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="l3" runat="server" Text="Price :"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="price" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label8" runat="server" Text="Modelno :"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="mno" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="qun" runat="server" Text="Quantity :"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="51px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="4">
                    <asp:Button ID="cart" runat="server" OnClick="cart_Click" Text="Add to cart" CssClass="button" Width="125px" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    
    </di>
        <asp:HiddenField ID="hcid" runat="server" />
        <asp:HiddenField ID="hpid" runat="server" />
    
    </div>
</asp:Content>