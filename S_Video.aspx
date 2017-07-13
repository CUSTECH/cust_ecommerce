<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="S_Video.aspx.cs" Inherits="S_Video" %>

<asp:Content ID="Content_S_Video" ContentPlaceHolderID="MainContent" Runat="Server">
   
                     
       
 <section id="s-video" class="s-video hidden-xs">
	<div id="container">
		<video class="video-section" autoplay loop="loop" muted>
			<source src="video/cookies.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"'>
			<source src="video/cookies.ogv" type='video/ogg; codecs="theora, vorbis"'>
			<source src="video/cookies.webm" type='video/webm; codecs="vp8, vorbis"'>
         
		</video>
        
		<div class="video-info">
			<div class="wrap">
				<h2 class="b-title">瑞和生物科技簡介宣導影片1</h2>
				<div class="name">瑞和生物科技簡介宣導影片2</div>
				<div class="text">
					<span>瑞和生物科技簡介宣導影片3</span>
					<br>
					<span class="hidden-xs">瑞和生物科技簡介宣導影片4.</span>
				</div>
			</div>
		</div>
        <video src="~/"/>
      
	</div>
      
</section> 

</asp:Content>

