<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" StylesheetTheme="MyTheme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
       
        <body>
                            <table align="center">
                    <tr>
                        <td class="auto-style1">
                            <fieldset id="f">
                <legend>Register Users</legend>
                                <div class="auto-style1">
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/reg.aspx" ForeColor="Blue" Font-Underline="false">Register Users</asp:HyperLink>
                                </div>
 </fieldset>
                        </td>
                        <td class="auto-style1">
                            <fieldset id="f">
                                <legend>Manage Details</legend>
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin/manage.aspx" ForeColor="Blue" Font-Underline="false">Manage Details</asp:HyperLink>
                            </fieldset>
                        </td>
                        <td class="auto-style1">
                            <fieldset id="f">
                                <legend>Feedback</legend>
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin/feedback.aspx" ForeColor="Blue" Font-Underline="false">Feedback</asp:HyperLink>
                            </fieldset>
                        </td>
                    </tr>
                </table>
           
        </body>
    </html>
</asp:Content>

