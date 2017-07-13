<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="On_Line_Support.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Table ID="Table2" runat="server" class="col-md-12">
        <asp:TableRow runat="server" Height="150px" Style="background-color: aqua">
        </asp:TableRow>

    </asp:Table>
   <div>
     
       <div style="text-align: center">
           <h1>CUST-E-Commerce 線上客服 </h1>
       </div>
       <table class="col-md-12" style="width: 100%">

           <tr>
               <td class="col-md-1" style="background-color: lightgray"></td>
               <td class="col-md-10" style="background-color: blanchedalmond">
                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                       <ContentTemplate>
                           <asp:Label ID="lblOutput" runat="server" Font-Size="Small" ForeColor="Maroon" Height="400px" Width="100%"></asp:Label>
                           <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
                           </asp:Timer>
                       </ContentTemplate>
                   </asp:UpdatePanel>
               </td>
               <td class="col-md-1" style="background-color: lightgray"></td>
           </tr>
           <tr>
               <td class="col-md-1" style="background-color: lightgray"></td>
               <td class="col-md-10">
                   <asp:Panel ID="Panel1" runat="server">
                       <table>
                           <tr>
                               <td style="background-color: #99CCFF"><span class="style3">使用者名稱 :&nbsp;</span>&nbsp;<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                   &nbsp;
                                        <asp:Button ID="Button_登入" runat="server" OnClick="Button_登入_Click" Text="登入" />
                               </td>
                           </tr>
                       </table>
                   </asp:Panel>
               </td>
               <td class="col-md-1" style="background-color: lightgray">
           </tr>
           <tr>
               <td class="col-md-1" style="background-color: lightgray">
               <td class="col-md-10">
                   <asp:Panel ID="Panel2" runat="server">
                       <table class="style1">
                           <tr>
                               <td style="background-color: #9999FF">
                                   <asp:Label ID="lblPrompt" runat="server" ForeColor="Maroon"></asp:Label>
                                   &nbsp;
                                        <asp:TextBox ID="txtMsg" runat="server" Width="100%"></asp:TextBox>
                                   &nbsp;
                                        <asp:Button ID="Button_送出訊息" runat="server" OnClick="Button_送出訊息_Click" Text="送出訊息" />
                                   <asp:Button ID="Button_結束線上服務" runat="server" OnClick="Button_結束線上服務_Click" Text=" 結束線上服務" />
                               </td>
                           </tr>
                       </table>
                   </asp:Panel>
               </td>
               <td class="col-md-1" style="background-color: lightgray">
           </tr>
       </table>     
    </div>                      
</asp:Content>

