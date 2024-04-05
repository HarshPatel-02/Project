<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="tt"  StylesheetTheme="MyTheme"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
     
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" BorderColor="#B7E9F7" BorderWidth="1px" CellPadding="3" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Vertical" HorizontalAlign="Center" style="text-align: left" OnItemCommand="DataList1_ItemCommand" OnDeleteCommand="DataList1_DeleteCommand" RepeatDirection="Horizontal" RepeatColumns="4">
            <HeaderStyle BackColor="#000084" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" HorizontalAlign="Center" />
            <HeaderTemplate>
                <h1 style="font-family: 'Lucida Handwriting'">
                    <asp:Button ID="Insert" runat="server" CssClass="button" OnClick="Insert_Click" style="text-align: center" Text="Insert" />
                </h1>
            </HeaderTemplate>
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
            <ItemTemplate> 
              <%--  Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />--%>
                Product id:
                <asp:Label ID="Product_idLabel" runat="server" Text='<%# Eval("[pid]") %>' />
                <br />
                Pname:
                <asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' />
                <br />
                Prise:
                <asp:Label ID="PriseLabel" runat="server" Text='<%# Eval("Prise") %>' />
                <br />
                Modelno:
                <asp:Label ID="ModelnoLabel" runat="server" Text='<%# Eval("Modelno") %>' />
                <br />
                Details:
                <br />
                <%--<asp:Label ID="DetailsLabel"  runat="server" Text='<%# Eval("Details") %>' />--%>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"  CssClass="tt" Text='<%# Eval("Details") %>' Height="255px" ReadOnly="True" Width="169px"></asp:TextBox>
                <br />
                C id:
                <asp:Label ID="C_idLabel" runat="server" Text='<%# Eval("[cid]") %>' />
                <br />
                img:<br /> <br /> &nbsp;<asp:Image ID="Image1" runat="server" Height="82px" ImageUrl='<%# Eval("img") %>' Width="141px" />
                <br />
                <asp:Button ID="Edit" runat="server" Text="Edit" CommandArgument='<%# Eval("[pid]") %>' CommandName="Edit" CssClass="button" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Delete" runat="server" Text="Delete" CommandArgument='<%# Eval("[pid]") %>' CommandName="Delete" CssClass="button"/>
                <br />
                <br /> 
            </ItemTemplate>
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:csmydb %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        

        <asp:Panel ID="Panel1" runat="server" style="text-align: left">
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
            <asp:DataList ID="DataList2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyField="Id" DataSourceID="SqlDataSource2" ForeColor="Black" OnItemCommand="DataList2_ItemCommand" RepeatDirection="Horizontal" style="text-align: center">
                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <ItemTemplate>
                    <strong><span class="auto-style1">Update<br /></span></strong>&nbsp;<br />&nbsp;<asp:Label ID="pnamelbl" runat="server" Text="Leptop Name :"></asp:Label>
&nbsp;
                    <asp:TextBox ID="pname" runat="server" CssClass="txt" Text='<%# Eval("Pname") %>'></asp:TextBox>
                    <br />
                    <asp:Label ID="Pricelbl" runat="server" Text="Price :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="price" runat="server" CssClass="txt" Text='<%# Eval("Prise") %>'></asp:TextBox>
                    <br />
                    <asp:Label ID="mnolbl" runat="server" Text="Model No :"></asp:Label>
                    <asp:TextBox ID="modelno" runat="server" CssClass="txt" Text='<%# Eval("Modelno") %>'></asp:TextBox>
                    <br />
                    <asp:Label ID="detailslbl" runat="server" Text="Details :"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="details" runat="server" CssClass="txt"  Text='<%# Eval("Details") %>' TextMode="MultiLine"></asp:TextBox>
                   <br />
                    <asp:Label ID="cidlbl" runat="server" Text="cid :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="cid" runat="server" CssClass="txt" Text='<%# Eval("cid") %>'></asp:TextBox>
                    <br />
                    <asp:Label ID="image" runat="server" Text="img :"></asp:Label>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <%--<asp:Image ID="Image2" runat="server" Height="86px" Width="134px" ImageUrl='<%# Eval("img") %>'  />
                    <asp:Button ID="upload" runat="server" Text="upload" />--%>
                    <br />
                    <asp:Button ID="update" runat="server" CommandArgument='<%# Eval("pid") %>' CssClass="button" Text="Update" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="cancle" runat="server" CssClass="button" Text="Cancel" />
                </ItemTemplate>
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:DataList>
      
        </asp:Panel>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:csmydb %>" SelectCommand="SELECT Id, pid, Pname, Prise, Modelno, Details, cid, img FROM product WHERE (pid = @pid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" DefaultValue="0" Name="pid" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
