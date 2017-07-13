<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Mobil_View_By_Type.aspx.cs" Inherits="Mobil_View_By_Type" %>

<asp:Content ID="whowhat_View_By_Supplyer" ContentPlaceHolderID="MainContent" Runat="Server">
      <div>
           <table style="width: 100%"> 
             <tr>
                        <td valign="top" bgcolor="#FFFFCC"  style="width: 100%" height="40px">
                         
                                
                             <a class="navbar-brand" runat="server" href="~/ShoppingCart.aspx">前往購物車</a> 
                             <asp:DropDownList ID="DropDownList_By_Supplyer" runat="server" Height="40px" Width="200px" 
                                 valign ="top"  AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="商品類別" DataValueField="商品類別" Font-Size="Large">
                              
                             </asp:DropDownList>
                            
                        
                        </td>  
                 </tr>
               <tr>
                
                        <td   bgcolor=#CCFFFF  style="width: 100%" height="800px">
                            
                                
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="1" >
                                <AlternatingItemTemplate>
                                 <td id="Td1" runat="server" style="background-color:#FFF8DC;">
                                 <table class="style7">
                                         <tr>   
                                             <td>
                                                 <asp:Image ID="Image_商品圖片" runat="server" ImageAlign="middle" CssClass="img-responsive" Style="height: 60%"
                                            ImageUrl='<%# Eval("商品名稱", "~/images/{0}.jpg") %>' />
                                             </td>                       
                                         </tr>
                                     <tr>
                                            <td class="textAlign">
                                                 <asp:HyperLink ID="HyperLink_商品編號" runat="server" Font-Size ="Small" 
                                                     NavigateUrl='<%# Eval("商品編號", "DetailsItem.aspx?Id={0}") %>' 
                                                     Text='<%# Eval("商品編號") %>'></asp:HyperLink>
                                                 <br />
                                                 <asp:Label ID="商品名稱_Label" runat="server"  Font-Size ="Small" Text='<%# Eval("商品名稱") %>'></asp:Label>
                                                 <br />
                                                NT$
                                                <asp:Label ID="商品售價_Label" runat="server"  Font-Size ="Small" Text='<%# Eval("商品售價") %>'>></asp:Label>
                                             </td>
                                     </tr>
                                  </td>
                                </AlternatingItemTemplate>
                                <EditItemTemplate>
                                   <td id="Td7" runat="server" style="background-color:#008A8C;color: #FFFFFF;">
                                     商品名稱:
                                     <asp:TextBox ID="TextBox1" runat="server" 
                                         Text='<%# Bind("商品名稱") %>' />
                                     <br />
                                     <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                     <br />
                                     <asp:Button ID="Button1" runat="server" CommandName="Cancel" Text="取消" />
                                     <br />
                                 </td>
                                </EditItemTemplate>
                                 <ItemTemplate>
                                 <td id="Td8" runat="server" style="background-color:#DCDCDC;color: #000000;">
                                     <table class="style7">
                                         <tr>   
                                             <td>
                                                  <asp:Image ID="Image_商品圖片" runat="server" ImageAlign="middle" CssClass="img-responsive" Style="height: 60%"
                                                   ImageUrl='<%# Eval("商品名稱", "~/images/{0}.jpg") %>' />
                                             </td>                       
                                         </tr>
                                     <tr>
                                            <td class="textAlign">
                                                 <asp:HyperLink ID="HyperLink_商品編號" runat="server" Font-Size ="Small" 
                                                     NavigateUrl='<%# Eval("商品編號", "DetailsItem.aspx?Id={0}") %>' 
                                                     Text='<%# Eval("商品編號") %>'></asp:HyperLink>
                                                 <br />
                                                 <asp:Label ID="商品名稱_Label" runat="server"  Font-Size ="Small" Text='<%# Eval("商品名稱") %>'></asp:Label>
                                                 <br />
                                                NT$
                                                <asp:Label ID="商品售價_Label" runat="server"  Font-Size ="Small" Text='<%# Eval("商品售價") %>'>></asp:Label>
                                             </td>
                                     </tr>
                                 </td>
                             </ItemTemplate>
                                <EmptyDataTemplate>
                                    <table style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr>
                                            <td>未傳回資料。</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <InsertItemTemplate>
                                     <td id="Td5" runat="server" style="">
                                     商品編號:
                                     <asp:TextBox ID="商品編號TextBox" runat="server" 
                                         Text='<%# Bind("商品編號") %>' />
                                     <br />
                                     <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                     <br />
                                     <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                     <br />
                                 </td>
                                </InsertItemTemplate>
                                
                                <LayoutTemplate>
                                 <table id="Table1" runat="server">
                                 <tr id="Tr1" runat="server">
                                     <td id="Td2" runat="server">
                                         <table ID="groupPlaceholderContainer" runat="server" border="1" 
                                             style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                             <tr ID="groupPlaceholder" runat="server">
                                             </tr>
                                         </table>
                                     </td>
                                 </tr>
                                 <tr id="Tr2" runat="server">
                                     <td id="Td3" runat="server" 
                                         style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                         <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                             <Fields>
                                                 <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                     ShowLastPageButton="True" />
                                             </Fields>
                                         </asp:DataPager>
                                     </td>
                                 </tr>
                             </table>
                                </LayoutTemplate>
                                <SelectedItemTemplate>
                                    <td id="Td6" runat="server" 
                                     style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                     商品名稱:
                                     <asp:Label ID="Label1" runat="server" Text='<%# Eval("商品名稱") %>' />
                                     <br />
                                 </td>
                                </SelectedItemTemplate>
                                 <GroupTemplate>
                                 <tr ID="itemPlaceholderContainer" runat="server">
                                     <td ID="itemPlaceholder" runat="server">
                                     </td>
                                 </tr>
                                 </GroupTemplate>


                            </asp:ListView>      
                                    
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;
                                 Data Source=|DataDirectory|\whowhat.accdb" 
                                 ProviderName="System.Data.OleDb" 
                                 SelectCommand="SELECT DISTINCT [商品描述], [商品售價], [商品庫存量], [商品名稱], [商品編號] FROM [資料表1] WHERE [商品類別] = @商品類別">
                                 <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList_By_Supplyer" Name="商品類別"  PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                             </asp:SqlDataSource> 


                           
                             
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringwhowhat %>" ProviderName="<%$ ConnectionStrings:ConnectionStringwhowhat.ProviderName %>"                             
                                  SelectCommand="SELECT DISTINCT [商品類別] FROM [資料表1]">
                              </asp:SqlDataSource>       

                         </td>
                       
             </tr>
           </table> 
      </div>            
</asp:Content>


