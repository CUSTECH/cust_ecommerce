<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="How-to-Use.aspx.cs" Inherits="How_to_Use" %>

<asp:Content ID="Content_How_To_Use" ContentPlaceHolderID="MainContent" Runat="Server">
    <section id="s-how-work" class="s-how-work">
         <asp:Table ID="Table2" runat="server">
              <asp:TableRow runat="server" Height="200px">
              </asp:TableRow>

          </asp:Table>
	<div class="container">
		<div class="row text-center">
			<h2 class="b-title ct1">如何採購?</h2>
			<div class="sub-title ct1">一切都很簡單!</div>
		</div>

		<div class="row steps">
			<div class="step wow rollIn animated" data-wow-duration="0.7s" data-wow-offset="300">
				<h2>步驟一. "選購產品"</h2>
				<div class="wrap dtab">
					<div class="media-left vam">
						<div class="desc">
							<div class="dtab">
								<div class="media-left vam">
									<i class="ib icon-step flaticon-shoppingcart9"></i>
								</div>
								<div class="media-left text">
									<div class="ib-vam"></div>
									<div class="ib vam text-label">選購產品加入購物車 </div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="step rght wow rollInRight animated" data-wow-duration="0.7s" data-wow-delay="0.25s" data-wow-offset="300">
				<h2>步驟二. "加入購物車"</h2>
				<div class="wrap dtab">
					<div class="media-left vam">
						<div class="desc">
							<div class="dtab">
								<div class="media-left vam">
									<i class="ib icon-step flaticon-clipboard109"></i>
								</div>
								<div class="media-left text">
									<div class="ib-vam"></div>
									<div class="ib vam text-label">填入資料, 選擇運送和付款方式</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="step wow rollIn animated" data-wow-duration="0.7s" data-wow-delay="0.25s" data-wow-offset="300">
				<h2>步驟三. "下單"</h2>
				<div class="wrap dtab">
					<div class="media-left vam">
						<div class="desc">
							<div class="dtab">
								<div class="media-left vam">
									<i class="ib icon-step flaticon-handshake1"></i>
								</div>
								<div class="media-left text">
									<div class="ib-vam"></div>
									<div class="ib vam text-label">採購結束.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="step rght wow rollInRight animated" data-wow-duration="0.7s" data-wow-delay="0.25s" data-wow-offset="300">
				<h2>Step 4. "收受產品"</h2>
				<div class="wrap dtab">
					<div class="media-left vam">
						<div class="desc">
							<div class="dtab">
								<div class="media-left vam">
									<i class="ib icon-step flaticon-happy50"></i>
								</div>
								<div class="media-left text">
									<div class="ib-vam"></div>
									<div class="ib vam text-label">收受產品. 我們歡迎您的回饋</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</section>
</asp:Content>

