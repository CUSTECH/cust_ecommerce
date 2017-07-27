<%@ Page Title="" Language="C#" MasterPageFile="~/Side_Page.master" AutoEventWireup="true" CodeFile="New_Hot_Sale.aspx.cs" Inherits="New_Hot_Sale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Table ID="Table2" runat="server" class="col-md-12">
            <asp:TableRow runat="server" Height="300px" Style="background-color: aqua">
            </asp:TableRow>

        </asp:Table>
    <table style="width: 100%; height: 100%">
                  <tr>
                      <td>
                          <div id="mySidenav" class="sidenav">
                              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                              <a href="#">About</a>
                              <a href="#">Services</a>
                              <a href="#">Clients</a>
                              <a href="#">Contact</a>
                          </div>

                          <h2>Animated Sidenav Example</h2>
                          <p>Click on the element below to open the side navigation menu.</p>
                          <span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776; open</span>

                          <script>
                              function openNav() {
                                  document.getElementById("mySidenav").style.width = "250px";
                              }

                              function closeNav() {
                                  document.getElementById("mySidenav").style.width = "0";
                              }
                          </script>
                      </td>
                      <td>
                          <div style="text-align: center">
                              <asp:Image ID="Image3" runat="server" class="logo" src="http://www.cust.edu.tw/www/img/layout/logo.png" />
                          </div>
                      </td>
                  </tr>
              </table>
</asp:Content>

