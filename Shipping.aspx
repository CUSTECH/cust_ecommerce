<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Shipping.aspx.cs" Inherits="Shipping" %>

<asp:Content ID="Content_Shipping" ContentPlaceHolderID="MainContent" Runat="Server">
     <section id="s-deliv" class="s-deliv">
          <asp:Table ID="Table2" runat="server">
              <asp:TableRow runat="server" Height="200px">
              </asp:TableRow>

          </asp:Table>
                        <div class="container">
                            <div class="row">
                                <div class="deliv-wrap justify">
                                    <div class="deliv-col lf">
                                        <div class="icon-deliv flaticon-delivery23"></div>
                                        <h2 class="title">運送方式</h2>
                                        <div class="line fadeInLeft animated wow" data-wow-duration="0.5s" data-wow-delay="0.2s">
                                            <div class="row">
                                                <div class="col-xs-3 col-sm-3"><i class="shipping-icon-delivery-truck"></i></div>
                                                <div class="col-xs-9 col-sm-8">
                                                    <div class="name">快遞</div>
                                                    <div class="text">
                                                        新台幣100元
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="line fadeInLeft animated wow" data-wow-duration="0.5s" data-wow-delay="0.6s">
                                            <div class="row">
                                                <div class="col-xs-3 col-sm-3"><i class="shipping-icon-pickup-man"></i></div>
                                                <div class="col-xs-9 col-sm-8">
                                                    <div class="name">自行取貨:</div>
                                                    <div class="text">臨櫃取貨免費</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="line fadeInLeft animated wow" data-wow-duration="0.5s" data-wow-delay="1s">
                                            <div class="row">
                                                <div class="col-xs-3 col-sm-3"><i class="shipping-icon-postbox"></i></div>
                                                <div class="col-xs-9 col-sm-8">
                                                    <div class="name">郵寄:</div>
                                                    <div class="text">依郵局收費.</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="deliv-col rt">
                                        <div class="icon-deliv flaticon-commerce"></div>
                                        <h2 class="title">付款方式</h2>
                                        <div class="line fadeInRight animated wow" data-wow-duration="0.5s" data-wow-delay="0.4s">
                                            <div class="row">
                                                <div class="col-xs-3 col-sm-3"><i class="shipping-icon-hand-bill"></i></div>
                                                <div class="col-xs-9 col-sm-8">
                                                    <div class="name">現金支付:</div>
                                                    <div class="text">你可貨到付款或自行取貨.</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="line fadeInRight animated wow" data-wow-duration="0.5s" data-wow-delay="0.8s">
                                            <div class="row">
                                                <div class="col-xs-3 col-sm-3"><i class="shipping-icon-buy11"></i></div>
                                                <div class="col-xs-9 col-sm-8">
                                                    <div class="name">信用卡支付:</div>
                                                    <div class="text">訂貨或貨到時信用卡支付</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="line fadeInRight animated wow" data-wow-duration="0.5s" data-wow-delay="1.2s">
                                            <div class="row">
                                                <div class="col-xs-3 col-sm-3"><i class="shipping-icon-paypal"></i></div>
                                                <div class="col-xs-9 col-sm-8">
                                                    <div class="name">支付寶:</div>
                                                    <div class="text">線上訂貨時使用</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
</asp:Content>

