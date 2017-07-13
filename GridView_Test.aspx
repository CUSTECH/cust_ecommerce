<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="GridView_Test.aspx.cs" Inherits="GridView_Test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
         <asp:Table ID="Table2" runat="server" class="col-md-12">
            <asp:TableRow runat="server" Height="150px">
            </asp:TableRow>

        </asp:Table>
        <div style="text-align:center">  
             <h1> 輕鬆 BUY 家 免出門 </h1>  
        </div>
        <asp:TextBox ID="TextBox1" runat="server" style="text-align: center" Text="CUST E-Commerce購物明細：" Font-Size = "large" ForeColor="Blue" Width="100%"></asp:TextBox>
        <br />
        <br />
    <br />
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="商品編號" DataSourceID="SqlDataSource1" Width="100%" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
            <EmptyDataTemplate>
                沒有購買項目.....
            </EmptyDataTemplate>
            <FooterStyle BackColor="Tan" />
            <Columns>
                <asp:ButtonField Text="刪除" ButtonType="Button" CommandName="DelItem" HeaderText="刪除" />
                <asp:BoundField DataField="商品編號" HeaderText="商品編號" SortExpression="商品編號" />
                <asp:BoundField DataField="商品名稱" HeaderText="商品名稱" SortExpression="商品名稱" />
                <asp:BoundField DataField="商品售價" HeaderText="商品售價" DataFormatString="{0:c}" SortExpression="商品售價" />
                <asp:TemplateField HeaderText="數量"></asp:TemplateField>
                <asp:TemplateField HeaderText="小計"></asp:TemplateField>

            </Columns>

        </asp:GridView>
         <h1> 請選擇物流方式</h1>
    <asp:RadioButtonList ID = RadioButtonList_物流方式 runat="server" AutoPostBack="True" Font-Size="Medium" OnSelectedIndexChanged="RadioButtonList_物流方式_SelectedIndexChanged">
        <asp:ListItem>快遞</asp:ListItem>
        <asp:ListItem>自行取貨</asp:ListItem>
        <asp:ListItem>郵寄</asp:ListItem>
        <asp:ListItem>7/11取貨</asp:ListItem>
        <asp:ListItem>臨櫃取貨</asp:ListItem>
  
    </asp:RadioButtonList>
    <br /> <br /> <br />
     
     <h1> 請選擇付款方式</h1>
     <asp:RadioButtonList ID = RadioButtonList_付款方式 runat="server" AutoPostBack="True" Font-Size="Medium" OnSelectedIndexChanged="RadioButtonList_付款方式_SelectedIndexChanged">
        <asp:ListItem>貨到付款</asp:ListItem>
        <asp:ListItem>信用卡支付</asp:ListItem>
        <asp:ListItem>轉帳</asp:ListItem>
        <asp:ListItem>支付寶</asp:ListItem>
        <asp:ListItem>跨境通</asp:ListItem>
       
    </asp:RadioButtonList>
        <br />
        <br />
        <asp:TextBox ID="TextBox_Message_Box" runat="server"> </asp:TextBox>
        <br />
        <br />
      

            <asp:Button ID="Button_送出訂單" runat="server" Text="送出訂單" OnClick="Button_送出訂單_Click" />
            <!-- <li><a runat="server" href="~/Order.aspx">送出訂單</a></li>  -->
       
     <asp:SqlDataSource ID="SqlDataSource1" runat="server"       
          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [商品編號], [商品名稱], [商品售價] FROM [資料表1]">
     </asp:SqlDataSource> 
    </div>
</asp:Content>

