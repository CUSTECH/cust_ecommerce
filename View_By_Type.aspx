<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="View_By_Type.aspx.cs" Inherits="View_By_Type" %>

<asp:Content ID="Content_View_By_Type" ContentPlaceHolderID="maincontent" Runat="Server">
    <script type="text/javascript">
          function getWidth() {
              var intViewportWidth = window.innerWidth;
              var w = window.innerWidth;
              var h = window.innerHeight;
              var ow = window.outerWidth; //including toolbars and status bar etc.
              var oh = window.outerHeight;
              if (window.matchMedia("(min-width: 400px)").matches) {
                  /* the viewport is at least 400 pixels wide */
              }
              else {
                  /* the viewport is less than 400 pixels wide */
              }
              if (self.innerWidth) {

                  return self.innerWidth;
              }



              if (document.documentElement && document.documentElement.clientWidth) {
                  return document.documentElement.clientWidth;
              }

              if (document.body) {
                  return document.body.clientWidth;

              }
          }
    </script>
   <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
   <script type="text/javascript">

       $(function () {
           // See if this is a touch device
           if ('ontouchstart' in window) {
               // Set the correct body class
               $('body').removeClass('no-touch').addClass('touch');

               // Add the touch toggle to show text
               $('div.boxInner img').click(function () {
                   $(this).closest('.boxInner').toggleClass('touchFocus');
               });
           }
       });
  </script>
  
    <div>
        <asp:Table ID="Table2" runat="server" class="col-md-12">
            <asp:TableRow runat="server" Height="150px" Style="background-color: aqua">
            </asp:TableRow>

        </asp:Table>
        <table "col-md-12" >
           <tr>
                        <td valign="top" bgcolor="#FFFFCC"  style="width: 10%"  height="40px">
                         
                                
                             <a class="navbar-brand" runat="server" href="~/ShoppingCart.aspx">前往購物車</a> 
                             <asp:DropDownList ID="DropDownList_By_Type" runat="server" Height="40px" Width="200px" 
                                 valign ="top"  AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="商品類別" DataValueField="商品類別" Font-Size="Large">                             
                             </asp:DropDownList>
                            
                        
                        </td>  
               </tr>
        </table>
        <table class="col-md-12" style="width:100%">
            
            <tr>
                <td class="col-md-1" style="background-color:white"></td>

                <td style="background-color: #CCFFFF" class="col-md-10">

                    <div class="wrap">
                        <asp:Panel runat="server" ID="Panel2" HorizontalAlign="Center">
                            <asp:Image ID="Page_Logo" runat="server" ImageUrl="~/images/Logo_Pic_4.jpg" Width="100%" Height="5%" ImageAlign="Middle" />
                        </asp:Panel>

                        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" GroupItemCount="4" Style="width: 100%" OnLoad="Page_Load">
                            <AlternatingItemTemplate>
                                <div class="box">
                                    <div class="boxInner">
                                        <asp:Image ID="Image_商品圖片" runat="server" ImageAlign="middle" CssClass="img-responsive" Style="height: 60%"
                                            ImageUrl='<%# Eval("商品名稱", "~/images/{0}.jpg") %>' />
                                        <asp:HyperLink ID="HyperLink_商品編號" runat="server" Font-Size="Small"
                                            NavigateUrl='<%# Eval("商品編號", "DetailsItem.aspx?Id={0}") %>'
                                            Text='<%# Eval("商品編號") %>'></asp:HyperLink>
                                        <br />
                                        <asp:Label ID="商品名稱_Label" runat="server" Font-Size="Small" role="menuitem" Text='<%# Eval("商品名稱") %>'></asp:Label>
                                        <br /> 特價  :
                                        <asp:Label ID="商品售價_Label" runat="server" Font-Size="Small" Text='<%# Eval("商品售價") %>'>></asp:Label>
                                        <div class="titleBox">
                                             原價 : <%# Eval("商品原價") %>
                                        </div>

                                    </div>
                                </div>
                            </AlternatingItemTemplate>
                            <ItemTemplate>
                                <div class="box">
                                    <div class="boxInner">
                                        <asp:Image ID="Image_商品圖片" runat="server" ImageAlign="middle" CssClass="img-responsive" Style="height: 60%"
                                            ImageUrl='<%# Eval("商品名稱", "~/images/{0}.jpg") %>' />
                                        <asp:HyperLink ID="HyperLink_商品編號" runat="server" Font-Size="Small"
                                            NavigateUrl='<%# Eval("商品編號", "DetailsItem.aspx?Id={0}") %>'
                                            Text='<%# Eval("商品編號") %>'></asp:HyperLink>
                                        <br />
                                        <asp:Label ID="商品名稱_Label" runat="server" Font-Size="Small" role="menuitem" Text='<%# Eval("商品名稱") %>'></asp:Label>
                                        <br /> 特價  :
                                        <asp:Label ID="商品售價_Label" runat="server" Font-Size="Small" Text='<%# Eval("商品售價") %>'>></asp:Label>
                                        <div class="titleBox">
                                            原價 : <%# Eval("商品原價") %>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <GroupTemplate>
                                <div id="itemPlaceholderContainer" runat="server">
                                    <div id="itemPlaceholder" runat="server">
                                    </div>
                                </div>
                            </GroupTemplate>
                            <LayoutTemplate>
                                <div runat="server" class="wrap" id="groupPlaceholderContainer">
                                    <div class="box" id="groupPlaceholder" runat="server">
                                        <div class="titleBox"></div>
                                    </div>
                                </div>
                                <div style="text-align: center">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True"
                                                ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                            </LayoutTemplate>
                        </asp:ListView>
                    </div>

                   

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;
                                 Data Source=|DataDirectory|\whowhat.accdb" 
                                 ProviderName="System.Data.OleDb" 
                                 SelectCommand="SELECT DISTINCT [商品描述], [商品售價], [商品庫存量], [商品原價],[商品名稱], [商品編號] FROM [資料表1] WHERE [商品類別] = @商品類別">
                                 <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList_By_Type" Name="商品類別"  PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                             </asp:SqlDataSource> 


                           
                             
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringwhowhat %>" ProviderName="<%$ ConnectionStrings:ConnectionStringwhowhat.ProviderName %>"                             
                                  SelectCommand="SELECT DISTINCT [商品類別] FROM [資料表1]">
                              </asp:SqlDataSource>       



                </td>
                <td class="col-md-1" style="background-color: white"></td>
            </tr>
           
        </table>

    </div>
</asp:Content>

