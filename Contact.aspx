<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <asp:Table ID="Table2" runat="server" class="col-md-12">
            <asp:TableRow runat="server" Height="200px" Style="background-color: white">

            </asp:TableRow>

        </asp:Table>
    <h2><%: Title %></h2>
    <h3></h3>
    <address>
        地址 : 中華科技大學臺北市南港區研究院路三段245號
        <br />
        <br />
        <abbr title="電話">電話:</abbr>
        (02) 2782-1862
    </address>

    <address>
        <strong>聯絡我們:</strong>   <a href="mailto:kentsun0401@gmail.com">kentsun0401@gmail.com</a><br />
        <strong>市場行銷:</strong> <a href="mailto:kentsun0401@gmail.com">kentsun0401@gmail.com</a>
    </address>
</asp:Content>
