<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="whowhat_main_page" ContentPlaceHolderID="MainContent" runat="Server">
   
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });

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
	<br><br><br><br><br><br>
  
    <div>
        <asp:Table ID="Table2" runat="server" class="col-md-12">
            <asp:TableRow runat="server" Height="10px" Style="background-color: aqua">

            </asp:TableRow>

        </asp:Table>
        <div class="col_md-12">
            <div">
                <asp:ImageButton ID="ImageButton_Left" runat="server"
                    ImageUrl="~/images/Left_Arrow.png" Width="5%" style="float:left"
                    OnClientClick="Left_Arrow_Click" OnClick="ImageButton_Left_Click" />
            </div>
            <div>
                <asp:Image ID="Slide_Image"
                    runat="server" ImageUrl="~/Slide_Picture/Slide_1.jpg" Width="90%" Height="300px" style="float:left" HorizontalAlign="Center" />
            </div>
            <div>
                <asp:ImageButton ID="ImageButton_Right" runat="server"
                    ImageUrl="~/images/Right_Arrow.png" Width="5%" style="float:left" OnClientClick="Right_Arrow_Click"
                    OnClick="ImageButton_Right_Click" />
            </div>
        </div>
         <asp:Table ID="Table1" runat="server" class="col-md-12">
        <asp:TableRow runat="server" Height="50px" Style="background-color: aqua">
        </asp:TableRow>

    </asp:Table>
        <table class="col-md-12" style="width: 100%">
             
            <tr>
                <td class="col-md-1" style="background-image: url('images/BackGround_4.jpg');">
                         
                </td>

                <td style="background-color: #CCFFFF" class="col-md-10">
                    <br />
                    
                    <div class="wrap">

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
                                        <br />
                                        特價  :
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
                                        <br />
                                        特價  :
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
                        SelectCommand="SELECT DISTINCT [商品描述], [商品售價], [商品庫存量], [商品原價],[商品名稱], [商品編號], [商品類別] FROM [資料表1]">
                        <SelectParameters>
                        </SelectParameters>
                    </asp:SqlDataSource>


                </td>
                <td class="col-md-1" style="background-image: url('images/BackGround_4.jpg');">
                         
                </td>
            </tr>

        </table>

    </div>
</asp:Content>



