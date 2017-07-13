<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Display_Product_IMage.aspx.cs" Inherits="Display_Product_IMage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <hr />
            <asp:Image ID="Image1" runat="server" BorderStyle="Double" BorderWidth="1px" Height="413px" Width="266px" />
            <hr />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Upload_Images.aspx">回到相簿</asp:HyperLink>
    </div>
    </form>
</body>
</html>

