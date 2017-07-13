<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Test_Detail_View.aspx.cs" Inherits="Test_Detail_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    
           <asp:Table ID="Table2" runat="server">
              <asp:TableRow runat="server" Height="200px">
              </asp:TableRow>

          </asp:Table>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="100%" Width="100%" AutoGenerateRows="False" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" CellPadding="2" DataKeyNames="商品編號" ForeColor="Black" GridLines="None">
        <Fields>
            <asp:BoundField DataField="商品售價" HeaderText="商品售價" SortExpression="商品售價" DataFormatString="{0:c}" ReadOnly="True" />
            <asp:BoundField DataField="商品類別" HeaderText="商品類別" SortExpression="商品類別" ReadOnly="True" />
            <asp:BoundField DataField="商品描述" HeaderText="商品描述" SortExpression="商品描述" />
            <asp:BoundField DataField="商品名稱" HeaderText="商品名稱" SortExpression="商品名稱" />
            <asp:BoundField DataField="最後更新時間" HeaderText="最後更新時間" SortExpression="最後更新時間" DataFormatString="{0:d}" ReadOnly="True" />
            <asp:BoundField DataField="商品廠商" HeaderText="商品廠商" SortExpression="商品廠商" />
            <asp:BoundField DataField="商品編號" HeaderText="商品編號" SortExpression="商品編號" ReadOnly="True" />
            <asp:ImageField DataImageUrlField="商品名稱" ControlStyle-Width="250" ControlStyle-Height = "250" 
                    DataImageUrlFormatString="~/images/{0}.jpg" HeaderText="商品圖片" ReadOnly="True">
            </asp:ImageField>
        </Fields>

        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />

    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnectionStringwhowhat %>" ProviderName="<%$ ConnectionStrings:ConnectionStringwhowhat.ProviderName %>"
        SelectCommand="SELECT * FROM [資料表1] WHERE ([商品編號] = @商品編號)">
        <SelectParameters>
            <asp:QueryStringParameter Name="商品編號" QueryStringField="Id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

