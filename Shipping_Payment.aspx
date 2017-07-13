<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Shipping_Payment.aspx.cs" Inherits="Shipping_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="whowhat_main_page" Runat="Server">  
     <br /> <br /> <br /> 
    <h1> 請選擇物流方式</h1>
    <asp:RadioButtonList runat="server" AutoPostBack="True" Font-Size="X-Large">
        <asp:ListItem>快遞</asp:ListItem>
        <asp:ListItem>自行取貨</asp:ListItem>
        <asp:ListItem>郵寄</asp:ListItem>
        <asp:ListItem>7/11取貨</asp:ListItem>
        <asp:ListItem>臨櫃取貨</asp:ListItem>
  
    </asp:RadioButtonList>
    <br /> <br /> <br /> 
     <h1> 請選擇付款方式</h1>
     <asp:RadioButtonList runat="server" AutoPostBack="True" Font-Size="X-Large">
        <asp:ListItem>貨到付款</asp:ListItem>
        <asp:ListItem>信用卡支付</asp:ListItem>
        <asp:ListItem>轉帳</asp:ListItem>
        <asp:ListItem>支付寶</asp:ListItem>
        <asp:ListItem>跨境通</asp:ListItem>
       
    </asp:RadioButtonList>
    <asp:Button ID="Button1" runat="server" Text="選擇 OK" OnClick="Button1_Click" />
    
</asp:Content>

