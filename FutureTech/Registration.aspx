<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" MasterPageFile="~/client.master" StylesheetTheme="MyTheme"%>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="reg">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style4" colspan="2" style="font-size: 50px">
                Registration</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="fnmlbl" runat="server" Text="First Name :" style="font-size: x-large"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="fnm" runat="server" CssClass="txt"></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="fnm" ErrorMessage="First Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="lnmlbl" runat="server" Text="Last Name :" style="font-size: x-large"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="lnm" runat="server" CssClass="txt" ></asp:TextBox>
            &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                </td>
            <td class="auto-style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="lnm" ErrorMessage="Last Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="unmlbl" runat="server" Text="User Name :" style="font-size: x-large"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="unm" runat="server" CssClass="txt"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="unm" CssClass="auto-style7" ErrorMessage="User Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="emaillbl" runat="server" Text="Email :" style="font-size: x-large"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="email" runat="server" CssClass="txt"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" CssClass="auto-style7" ErrorMessage="Email is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="pswlbl" runat="server" Text="Password :" style="font-size: x-large"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="psw" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="psw" CssClass="auto-style7" ErrorMessage="Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="cpswlbl" runat="server" Text="Confirm Password :" style="font-size: x-large"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="cpsw" runat="server" Style="margin-left: 0px" TextMode="Password" CssClass="txt"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="cpsw" ErrorMessage="Confirm password is required." ForeColor="Red" Style="font-size: medium"></asp:RequiredFieldValidator>
                &nbsp;</td>
        </tr>
        <tr class="auto-style7">
            <td class="auto-style3" colspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="You must enter the valid Email Id" ForeColor="Red" Style="font-size: medium" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="psw" ControlToValidate="cpsw" ErrorMessage="Both password is must be same." ForeColor="Red" Style="font-size: medium"></asp:CompareValidator>
            </td>
        </tr>
        <tr class="auto-style7">
            <td class="auto-style2" colspan="2">
     
           
                <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" CssClass="button" />
                <asp:Button ID="Reset" runat="server" Text="Reset" CssClass="button" />
     
           
                </td>
        </tr>
    </table>
        </div>
        
         
                </asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        #Reset1
        {
            width: 85px;
            height: 27px;
        }

        .auto-style2
        {
            text-align: center;
            }

        .auto-style3
        {
            height: 26px;
            text-align: right;
            width: 545px;
        }
    .auto-style4 {
        text-align: center;
        height:100px;
    }
        .auto-style7 {
            height: 27px;
            text-align: right;
            width: 470px;
        }
        .auto-style8 {
            height: 27px;
            text-align: left;
            width: 300px;
        }
        .auto-style10 {
            height: 26px;
            text-align: right;
            width: 334px;
        }
        .auto-style11 {
            height: 26px;
            text-align: left;
            width: 300px;
        }
        .auto-style12 {
            height: 27px;
            text-align: right;
            width: 334px;
        }
        .auto-style15 {
            height: 10px;
            text-align: left;
            width: 300px;
        }
    </style>
</asp:Content>
