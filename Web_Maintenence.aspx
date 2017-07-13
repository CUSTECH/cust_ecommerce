<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Web_Maintenence.aspx.cs" Inherits="Web_Maintenence" %>

<!DOCTYPE html>

<html lang="zh">
<head runat="server">
     <style type="text/css">

        .style1
        {
            width: 1600px;
        }
        .style2
        {
            font-size: xx-large;
            color: #FFFFFF;
            height: 50px;
        }
        .style3
        {
            width: 100px;
        }
        .style4
        {     
            font-family: 微軟正黑體;
            background-color: #800000;
        }
        .style5
        {
            font-size: xx-large;
          
        }
         .style6
        {
            font-size: large;
          
        }
         .left-page-style {
             width: 200px;
             height: 800px;
             background-color: lightgray;
         }
          .center-page-style {
             width: 1920px;
             height: 800px;
             background-color: lightblue;
         }
         .right-page-style {
             width: 200px;
             height: 800px;
             background-color: lightgray;
         }
         
           .main-page-style {
             width: 1200px;
             height: 800px;
            font-family: 微軟正黑體;
            background-color: lightblue;
             text-align: justify;
         }
         .auto-style1 {
             margin-right: 0px;
         }
         .auto-style2 {
             left: -4px;
             right: 4px;
             top: 3px;
         }
         </style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %>  CUST E-Commerce  </title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body>
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--如需了解 ScriptManager 的搭配指令碼，請參閱 http://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--架構指令碼--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="respond" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--網站指令碼--%>
            </Scripts>
        </asp:ScriptManager>

        <div class="navbar navbar-inverse navbar-fixed-top" style="left: 0; right: -8px; top: 0; height: 79px">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

            </div>
        </div>
        <!-- Class -->

        <!-- Section -->  
         <asp:Table ID="Table2" runat="server" class="col-md-12">
            <asp:TableRow runat="server" Height="150px" Style="background-color: aqua">
            </asp:TableRow>

        </asp:Table>
         <div> 
              <asp:GridView ID="GridView1" runat="server" width= 800px AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="識別碼" DataSourceID="SqlDataSource1"
                  OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style1" Height="518px" OnRowCreated="GridView1_RowCreated">
                  <Columns>
                      <asp:BoundField DataField="識別碼" HeaderText="識別碼" InsertVisible="False" ReadOnly="True" SortExpression="識別碼" />
                      <asp:BoundField DataField="主鍵" HeaderText="主鍵" SortExpression="主鍵" />
                      <asp:BoundField DataField="編號" HeaderText="編號" SortExpression="編號" />
                      <asp:BoundField DataField="商品廠商" HeaderText="商品廠商" SortExpression="商品廠商" />
                      <asp:BoundField DataField="商品類別" HeaderText="商品類別" SortExpression="商品類別" />
                      <asp:BoundField DataField="商品編號" HeaderText="商品編號" SortExpression="商品編號" />
                      <asp:BoundField DataField="類別主鍵" HeaderText="類別主鍵" SortExpression="類別主鍵" />
                      <asp:BoundField DataField="商品名稱" HeaderText="商品名稱" SortExpression="商品名稱" />
                      <asp:BoundField DataField="登錄日期" HeaderText="登錄日期" SortExpression="登錄日期" />
                      <asp:BoundField DataField="商品售價" HeaderText="商品售價" SortExpression="商品售價" />
                      <asp:BoundField DataField="商品折數" HeaderText="商品折數" SortExpression="商品折數" />
                      <asp:BoundField DataField="商品描述" HeaderText="商品描述" SortExpression="商品描述" />
                      <asp:BoundField DataField="是否刪除" HeaderText="是否刪除" SortExpression="是否刪除" />
                      <asp:BoundField DataField="最後更新時間" HeaderText="最後更新時間" SortExpression="最後更新時間" />
                      <asp:BoundField DataField="程式" HeaderText="程式" SortExpression="程式" />
                      <asp:BoundField DataField="商品成本價" HeaderText="商品成本價" SortExpression="商品成本價" />
                      <asp:BoundField DataField="商品單位" HeaderText="商品單位" SortExpression="商品單位" />
                      <asp:BoundField DataField="商品影像名稱" HeaderText="商品影像名稱" SortExpression="商品影像名稱" />
                      <asp:BoundField DataField="商品庫存量" HeaderText="商品庫存量" SortExpression="商品庫存量" />
                      <asp:BoundField DataField="商品安全庫存量" HeaderText="商品安全庫存量" SortExpression="商品安全庫存量" />
                      <asp:BoundField DataField="商品原價" HeaderText="商品原價" SortExpression="商品原價" />
                      <asp:CommandField ShowEditButton="true" />
                      <asp:CommandField ShowDeleteButton="true" />
            
                  </Columns>
              </asp:GridView> 
             <asp:Table ID="Table_Insert_Data" runat="server" Enabled="True" Visible="False">
                 <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_識別碼" runat="server" Text="識別碼"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_識別碼" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_主鍵" runat="server" Text="主鍵"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_主鍵" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                   <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_編號" runat="server" Text="編號"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_編號" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品廠商" runat="server" Text="商品廠商"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品廠商" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                   <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品類別" runat="server" Text="商品類別"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品類別" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品編號" runat="server" Text="商品編號"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品編號" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_類別主鍵" runat="server" Text="類別主鍵"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_類別主鍵" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品名稱" runat="server" Text="商品名稱"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品名稱" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                   <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_登錄日期" runat="server" Text="登錄日期"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_登錄日期" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品售價" runat="server" Text="商品售價"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品售價" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品折數" runat="server" Text="商品折數"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品折數" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品描述" runat="server" Text="商品描述"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品描述" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_是否刪除" runat="server" Text="是否刪除"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_是否刪除" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_最後更新時間" runat="server" Text="最後更新時間"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_最後更新時間" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_程式" runat="server" Text="程式"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_程式" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品成本價" runat="server" Text="商品成本價"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品成本價" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品單位" runat="server" Text="商品單位"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品單位" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品影像名稱" runat="server" Text="商品影像名稱"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品影像名稱" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                   <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品庫存量" runat="server" Text="商品庫存量"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品庫存量" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品安全庫存量" runat="server" Text="商品安全庫存量"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品安全庫存量" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
                  <asp:TableRow>
                     <asp:TableCell>
                         <asp:Label ID="Label_商品原價" runat="server" Text="商品原價"></asp:Label>
                     </asp:TableCell>
                      <asp:TableCell>
                          <asp:TextBox ID="TextBox_商品原價" runat="server"></asp:TextBox>
                     </asp:TableCell>
                 </asp:TableRow>
             </asp:Table>
               <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="識別碼" DataSourceID="SqlDataSource1" Height="50px" Visible="False" Width="1024px" OnItemInserting="DetailsView1_ItemInserting" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                   <Fields>
                       <asp:BoundField DataField="識別碼" HeaderText="識別碼" InsertVisible="True" ReadOnly="True" SortExpression="識別碼" />
                       <asp:BoundField DataField="主鍵" HeaderText="主鍵" SortExpression="主鍵" />
                       <asp:BoundField DataField="編號" HeaderText="編號" SortExpression="編號" />
                       <asp:BoundField DataField="商品廠商" HeaderText="商品廠商" SortExpression="商品廠商" />
                       <asp:BoundField DataField="商品類別" HeaderText="商品類別" SortExpression="商品類別" />
                       <asp:BoundField DataField="商品編號" HeaderText="商品編號" SortExpression="商品編號" />
                       <asp:BoundField DataField="類別主鍵" HeaderText="類別主鍵" SortExpression="類別主鍵" />
                       <asp:BoundField DataField="商品名稱" HeaderText="商品名稱" SortExpression="商品名稱" />
                       <asp:BoundField DataField="登錄日期" HeaderText="登錄日期" SortExpression="登錄日期" />
                       <asp:BoundField DataField="商品售價" HeaderText="商品售價" SortExpression="商品售價" />
                       <asp:BoundField DataField="商品折數" HeaderText="商品折數" SortExpression="商品折數" />
                       <asp:BoundField DataField="商品描述" HeaderText="商品描述" SortExpression="商品描述" />
                       <asp:BoundField DataField="是否刪除" HeaderText="是否刪除" SortExpression="是否刪除" />
                       <asp:BoundField DataField="最後更新時間" HeaderText="最後更新時間" SortExpression="最後更新時間" />
                       <asp:BoundField DataField="程式" HeaderText="程式" SortExpression="程式" />
                       <asp:BoundField DataField="商品成本價" HeaderText="商品成本價" SortExpression="商品成本價" />
                       <asp:BoundField DataField="商品單位" HeaderText="商品單位" SortExpression="商品單位" />
                       <asp:BoundField DataField="商品影像名稱" HeaderText="商品影像名稱" SortExpression="商品影像名稱" />
                       <asp:BoundField DataField="商品庫存量" HeaderText="商品庫存量" SortExpression="商品庫存量" />
                       <asp:BoundField DataField="商品安全庫存量" HeaderText="商品安全庫存量" SortExpression="商品安全庫存量" />
                       <asp:BoundField DataField="商品原價" HeaderText="商品原價" SortExpression="商品原價" />
                       <asp:CommandField ShowInsertButton="True" />
                   </Fields>
              </asp:DetailsView>
             
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringwhowhat %>" ProviderName="<%$ ConnectionStrings:ConnectionStringwhowhat.ProviderName %>" SelectCommand="SELECT * FROM [資料表1]" DeleteCommand="DELETE FROM [資料表1] WHERE [識別碼] = ?" InsertCommand="INSERT INTO 資料表1(識別碼, 主鍵, 編號, 商品廠商, 商品類別, 商品編號, 類別主鍵, 商品名稱, 登錄日期, 商品售價, 商品折數, 商品描述, 是否刪除, 最後更新時間, 程式, 商品成本價, 商品單位, 商品影像名稱, 商品庫存量, 商品安全庫存量, 商品原價) VALUES (99, 1, 2, 'XX', 'YY', '12', 2, 'XX', #12/12/1988#, 100, 20, 'XX', 'Yes', #12/31/2016#, 'N/A', 100, 'XX', 'XXX', 100, 10, 'XX')" UpdateCommand="UPDATE [資料表1] SET [主鍵] = ?, [編號] = ?, [商品廠商] = ?, [商品類別] = ?, [商品編號] = ?, [類別主鍵] = ?, [商品名稱] = ?, [登錄日期] = ?, [商品售價] = ?, [商品折數] = ?, [商品描述] = ?, [是否刪除] = ?, [最後更新時間] = ?, [程式] = ?, [商品成本價] = ?, [商品單位] = ?, [商品影像名稱] = ?, [商品庫存量] = ?, [商品安全庫存量] = ?, [商品原價] = ? WHERE [識別碼] = ?">
                   <DeleteParameters>
                       <asp:Parameter Name="識別碼" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="識別碼" Type="Int32" />
                       <asp:Parameter Name="主鍵" Type="Int32" />
                       <asp:Parameter Name="編號" Type="Int32" />
                       <asp:Parameter Name="商品廠商" Type="String" />
                       <asp:Parameter Name="商品類別" Type="String" />
                       <asp:Parameter Name="商品編號" Type="String" />
                       <asp:Parameter Name="類別主鍵" Type="Int32" />
                       <asp:Parameter Name="商品名稱" Type="String" />
                       <asp:Parameter Name="登錄日期" Type="DateTime" />
                       <asp:Parameter Name="商品售價" Type="Int32" />
                       <asp:Parameter Name="商品折數" Type="Int32" />
                       <asp:Parameter Name="商品描述" Type="String" />
                       <asp:Parameter Name="是否刪除" Type="String" />
                       <asp:Parameter Name="最後更新時間" Type="DateTime" />
                       <asp:Parameter Name="程式" Type="String" />
                       <asp:Parameter Name="商品成本價" Type="Int32" />
                       <asp:Parameter Name="商品單位" Type="String" />
                       <asp:Parameter Name="商品影像名稱" Type="String" />
                       <asp:Parameter Name="商品庫存量" Type="Int32" />
                       <asp:Parameter Name="商品安全庫存量" Type="Int32" />
                       <asp:Parameter Name="商品原價" Type="Int32" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="主鍵" Type="Int32" />
                       <asp:Parameter Name="編號" Type="Int32" />
                       <asp:Parameter Name="商品廠商" Type="String" />
                       <asp:Parameter Name="商品類別" Type="String" />
                       <asp:Parameter Name="商品編號" Type="String" />
                       <asp:Parameter Name="類別主鍵" Type="Int32" />
                       <asp:Parameter Name="商品名稱" Type="String" />
                       <asp:Parameter Name="登錄日期" Type="DateTime" />
                       <asp:Parameter Name="商品售價" Type="Int32" />
                       <asp:Parameter Name="商品折數" Type="Int32" />
                       <asp:Parameter Name="商品描述" Type="String" />
                       <asp:Parameter Name="是否刪除" Type="String" />
                       <asp:Parameter Name="最後更新時間" Type="DateTime" />
                       <asp:Parameter Name="程式" Type="String" />
                       <asp:Parameter Name="商品成本價" Type="Int32" />
                       <asp:Parameter Name="商品單位" Type="String" />
                       <asp:Parameter Name="商品影像名稱" Type="String" />
                       <asp:Parameter Name="商品庫存量" Type="Int32" />
                       <asp:Parameter Name="商品安全庫存量" Type="Int32" />
                       <asp:Parameter Name="商品原價" Type="Int32" />
                       <asp:Parameter Name="識別碼" Type="Int32" />
                      
                   </UpdateParameters>

               </asp:SqlDataSource>    
                         
               <asp:Button ID="Button_輸入新增資料" runat="server" Text="輸入新增資料" OnClick="Button1_Click" Width="175px" CssClass="auto-style2" />
               <asp:Button ID="Button_新增輸入資料進資料庫" runat="server"  Text="新增輸入資料進資料庫" Width="175px" CssClass="auto-style2" OnClick="Button_新增輸入資料進資料庫_Click" />
               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Upload_Image.aspx">上傳商品圖片</asp:HyperLink>
               <br />
               <br />
               <footer>
                        <p>&copy; <%: DateTime.Now.Year %> - - 瑞和生物科技貿易股份有限公司電商網</p>
               </footer>
         </div>
</form>
</body>
</html> 


