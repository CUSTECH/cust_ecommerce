<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DetailsItem.aspx.cs" Inherits="DetailsItem" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:Table ID="Table2" runat="server" class="col-md-12">
        <asp:TableRow runat="server" Height="150px" Style="background-color: aqua">
        </asp:TableRow>

    </asp:Table>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" DataSourceID="SqlDataSource1" BackColor="#99CCFF">
        <Fields>
            <asp:BoundField DataField="商品編號" HeaderText="商品編號" SortExpression="商品編號" />
            <asp:BoundField DataField="商品類別" HeaderText="商品類別" SortExpression="商品類別" />
            <asp:BoundField DataField="商品廠商" HeaderText="商品廠商" SortExpression="商品廠商" />
            <asp:BoundField DataField="商品名稱" HeaderText="商品名稱" SortExpression="商品名稱" />
            <asp:BoundField DataField="商品描述" HeaderText="商品描述" SortExpression="商品描述" />
            <asp:BoundField DataField="商品售價" DataFormatString="{0:c}" HeaderText="商品售價" ReadOnly="True" SortExpression="商品售價" />
            <asp:BoundField DataField="最後更新時間" DataFormatString="{0:d}" HeaderText="最後更新時間" SortExpression="最後更新時間" />
            <asp:ImageField DataImageUrlField="商品名稱" ControlStyle-Width="250" ControlStyle-Height="250"
                DataImageUrlFormatString="~/images/{0}.jpg" HeaderText="商品圖片" ReadOnly="true">
            </asp:ImageField>
        </Fields>

    </asp:DetailsView>
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                <asp:Label ID="Label1" runat="server" Text="請輸入購買數量 :"></asp:Label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <asp:TextBox ID="txtQuantity" runat="server" Text="1" TextMode=" Number" CssClass="text-center"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="請輸入購買數量" ControlToValidate="txtQuantity" MaximumValue="1000" MinimumValue="1" Type="Integer">
                </asp:RangeValidator>
            </asp:TableCell>
            <asp:TableCell runat="server">
                
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Button ID="Button1" runat="server" Text="加入購物車" OnClick="Button1_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\whowhat.accdb"
        ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [資料表1] WHERE ([商品編號] = @商品編號)">
        <SelectParameters>
            <asp:QueryStringParameter Name="商品編號" QueryStringField="Id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

                            
                          

