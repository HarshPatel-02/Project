<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="hone" MasterPageFile="~/client.master" StylesheetTheme="MyTheme" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 253px;
        }
        .auto-style4 {
            width: 253px;
            text-align: center;
        }
    </style>

 
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Dell.aspx" Text="Dell" CssClass="button" />
                    <br />
                    Buy now </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/hp.aspx" Text="Hp" OnClick="hp_Click" CssClass="button" />
                    <br />
                    Buy now </td>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server" PostBackUrl="~/lenovo.aspx" Text="Lenovo" OnClick="lenovo_Click" CssClass="button" />
                    <br />
                    Buy now </td>
            </tr>
          
                </table>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" align="center">
                        <ContentTemplate>
                            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile.xml" Height="400px" Width="800px" />
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:Timer ID="Timer1" runat="server" Interval="800">
                            </asp:Timer>
                        </ContentTemplate>
        </asp:UpdatePanel>
                
        
    
    </div>
    </asp:Content>