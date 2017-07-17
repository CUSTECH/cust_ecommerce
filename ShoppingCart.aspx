<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>


<asp:Content ID="Content_Shopping_Cart" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <asp:Table ID="Table2" runat="server" class="col-md-12">
            <asp:TableRow runat="server" Height="150px">
            </asp:TableRow>

        </asp:Table>
        <div style="text-align:center">  
             <h1> 中華科大電商網 </h1>  
        </div>
        <div class="col-md-10">
            <asp:TextBox ID="TextBox1" runat="server" Style="text-align: center" Text="中華科大電商網購物明細：" Font-Size="large" ForeColor="Blue" Width="100%">

            </asp:TextBox>
        </div>
        <br />
        <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="2" DataKeyNames="商品編號" DataSourceID="SqlDataSource1" 
        GridLines="None" Width="100%" 
        OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" 
        OnRowCommand="GridView1_RowCommand" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" ForeColor="Black" AllowPaging="True" AllowSorting="True">
        <EmptyDataTemplate>
            沒有購買項目.....
        </EmptyDataTemplate>
        <FooterStyle BackColor="Tan" />
        <Columns >
             <asp:ButtonField ButtonType="Button" HeaderText="刪除" Text="刪除" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" 
                CommandName="DelItem" />
            <asp:BoundField DataField="商品編號" HeaderText="商品編號" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                SortExpression="商品編號" /> 
            <asp:BoundField DataField="商品名稱" HeaderText="商品名稱" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                SortExpression="商品名稱" />
            <asp:BoundField DataField="商品售價" DataFormatString="{0:c}" HeaderText="商品售價" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                SortExpression="商品售價" />         
             <asp:TemplateField HeaderText="數量"/>            
            <asp:TemplateField HeaderText="小計"/>   
        </Columns>
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
     </asp:GridView>  <br />  <br />  <br />
      <div  style ="text-align:center">
        <h1> 請選擇物流方式</h1>        
              <asp:RadioButtonList ID="RadioButtonList_物流方式" runat="server"  AutoPostBack="True" Font-Size="Medium" OnSelectedIndexChanged="RadioButtonList_物流方式_SelectedIndexChanged" RepeatLayout="Flow">
                  <asp:ListItem>快遞取貨    </asp:ListItem>
                  <asp:ListItem>自行取貨</asp:ListItem>
                  <asp:ListItem>郵寄取貨    </asp:ListItem>                
                  <asp:ListItem>臨櫃取貨</asp:ListItem> 
                  <asp:ListItem>超商取貨</asp:ListItem>

              </asp:RadioButtonList>
         
    <br /> <br /> <br />
    <div >
         <asp:TextBox ID="TextBox_Message_Box" runat="server" Width="100%" TextMode="MultiLine">

         </asp:TextBox> 
        <br />
         <asp:TextBox ID="TextBox_Seven_Eleven_Address" runat="server" Width="100%" TextMode="MultiLine" Visible="False">取貨之超商地址</asp:TextBox> 
    </div>
           <br /> <br /> <br />
          <div>
              <asp:Panel ID="Panel1" runat="server" Width="100%">
                  <a href="https://emap.pcsc.com.tw/" target="_blank" style="color: green">7-11門市查詢</a> |
              <a href="http://www.family.com.tw/marketing/inquiry.aspx" style="color: green" target="_blank">全家門市查詢</a>
                  <br />
                 
              </asp:Panel>
          </div>
     <h1> 請選擇付款方式</h1>
          <asp:RadioButtonList ID="RadioButtonList_付款方式" runat="server" AutoPostBack="True" Font-Size="Medium" OnSelectedIndexChanged="RadioButtonList_付款方式_SelectedIndexChanged" RepeatLayout="Flow">
              <asp:ListItem> 信用卡支付    </asp:ListItem>
              <asp:ListItem> 支付寶支付    </asp:ListItem>
              <asp:ListItem> 跨境通支付    </asp:ListItem>
              <asp:ListItem> 貨到付款      </asp:ListItem>
              <asp:ListItem> 轉帳支付 :  帳號 -> 郵政劃撥儲金帳戶 19207275   </asp:ListItem>
          </asp:RadioButtonList>
     </div>
      <asp:Table ID="Table1" runat="server" HorizontalAlign="Center">      
        <asp:TableRow runat="server">
            <asp:TableCell runat="server" HorizontalAlign="Center">
              <asp:Button ID="Button_送出訂單" runat="server" Text="送出訂單" style="text-align: center" OnClick="Button_送出訂單_Click" BackColor="#CCFFFF" />
            </asp:TableCell>
        </asp:TableRow>
       </asp:Table>
       
       
     <asp:SqlDataSource ID="SqlDataSource1" runat="server"       
          ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\whowhat.accdb" 
          ProviderName="System.Data.OleDb" SelectCommand="SELECT [商品編號], [商品名稱], [商品售價] FROM [資料表1]">
     </asp:SqlDataSource> 
    
                  

                   
    
</div>
</asp:Content>




