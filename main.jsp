<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE HTML>
<!--
	Exponent by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>메인 페이지</title>
		  
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/etcMain.css" />
		<link rel="favicon" href="${pageContext.request.contextPath}/images/favicon3.ico"/>
		<link rel="icon" href="${pageContext.request.contextPath}/images/favicon3.ico" type="image/x-icon" sizes="16x16"/>
	</head>

	<body class="is-preload">		

 	  <!-- Header -->
         <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/header.jsp" flush="true"/>
            </div>
         </div> 

		<!-- Banner -->
			<section id="banner" >
				<div class="inner media2" style = "left:20%;" >
					<h2 style = "font-family: GmarketSansMedium !important;">엄마의 마음으로,<br />
					마미랑<br></h2>
					<h4 style = "font-family: GmarketSansMedium !important;" >대한민국 1등 베이비시터 매칭 서비스</h4>
					<ul class="actions special">
						<c:choose>
							<c:when test="${userStatus eq 1}">
								<li><a href="${pageContext.request.contextPath}/service/SearchMomOk.ser" class="button large primary media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시터찾기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							</c:when>
							<c:when test="${userStatus eq 2}">
								<li><a href="${pageContext.request.contextPath}/service/SearchJobOk.ser" class="button large primary media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일자리찾기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="${pageContext.request.contextPath}/user/UserJoin.user" class="button large primary media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가입하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
					
				</div>
			<a href="#one" class="more scrolly">Learn more ...</a>
			</section>

		<!-- Main -->
			<div id="main" class="container">

				<!-- One 간단 문구 -->
					<section id="one" class="feature major ">
						<img id = "logo" src = "https://cdn.discordapp.com/attachments/954273372760571914/955478975797403648/1.png" ><br><br>
						<p><strong>육아</strong>에 <strong>도움</strong>이 필요한 <strong>부모님</strong>들을 위해 <br><strong>언제 어디서나</strong> 마미랑이 함께 하겠습니다. </p>
					</section>
            </div>
            <!-- 마미랑은 어떤 서비스? -->
           
            <div style = "position: relative;" >
               <div > <img src="https://cdn.discordapp.com/attachments/954273372760571914/955286049339375616/background.png"; style ="width: 100%;"></img></div>
               <img src="https://cdn.discordapp.com/attachments/954273372760571914/955286607622176788/connect.png"; style ="width: 30%; top:12%; right: 15%; position: absolute;" class="media10">
                <h2 class = "textOnImg media11">마미랑은 어떤 서비스인가요?</h2>
               <h4 class = "textOnImg media12" style="top:27%; font-family: 'GmarketSansLight'!important;"> 
                마미랑은 맞벌이로 인해 바쁜 부모님들을 대신해<br>
                내 아이를 믿고 맡길 수 있는 베이비시터를 <br>
                간편하게 찾아주는 
                <strong style = "font-family: GmarketSansMedium !important; color:white">베이비시터 매칭 서비스</strong> 입니다.</h4>
                <img src="https://cdn.discordapp.com/attachments/954273372760571914/955903608019386368/16a69a30123d3158.png"; class = "wave media13">
                <p class = "textOnImg media22" style="top: 53%; font-size: 14px; line-height: 21px; color: black;">
                    원하는 시간대에 내 아이에게 필요한 돌봄유형을 선택하여<br>
                    다양하고 까다로운 부모님의 니즈를 충족할<br>
                    베이비시터를 찾을 수 있는 공유 경제 서비스 입니다. </p>
                    <ul class="actions special media14" >
						<li><a href="${pageContext.request.contextPath}/service/SearchMomOk.ser" class="button large primary media15" style = "position: absolute;
                            color:#ffb61a !important;
                            background-color: white !important;
                            left: 22%;
                            top: 73%;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마미랑 둘러보기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
					</ul>
    
            </div>
           <div id="main" class="container media16">
				<!-- Two 마미랑 이용 방법 -->
					<section id="two" class="feature media17">
						<div>
                            <h2 class = "mainTitle media18">마미랑은 어떻게 이용하나요?</h2>
                            <!-- 슬라이더 배너 -->
                            <div class="section media19"> 
                                <input type="radio" name="slide" id="slide01" checked>
                                <input type="radio" name="slide" id="slide02">
                                <input type="radio" name="slide" id="slide03">
                                <div class="slidewrap">
                                    
                                    <ul class="slidelist media20" style = "margin: -15px 0 2em 0;">
                                        <!-- 슬라이드 영역 -->
                                        <li class="slideitem">
                                            <a>
                                                <div class="textbox media21">
                                                    <h3 class = "slideText media17">맞춤 시터 찾기</h3>
                                                    <p class="media15">
                                                        ① 돌봄지역, 돌봄유형, 상세검색 등
                                                    <br>여러가지의 다양한 필터링을 통해 
                                                    <br>나에게 딱 맞는 시터를 찾아보세요<br><br>
                                                    ② 목록에서 원하는 시터의 프로필을 클릭</p>
                                             
                                                </div>
                                                <img src="https://cdn.discordapp.com/attachments/954273372760571914/957717837437358130/slider1.png">
                                            </a>
                                        </li>
                                        <li class="slideitem">
                                            <a>
                                                
                                                <div class="textbox">
                                                    <h3 class = "slideText media17">돌봄 요청 보내기</h3>
                                                    <p class="media15">
                                                         ① 프로필에서 여러가지 정보를 조회하고
                                                     <br>내 마음에 드는 시터를 찾았다면
                                                     <br>
                                                     <br>② 상단의 돌봄 신청 버튼을 누르고
                                                     <br>내 카카오톡 아이디와 한 줄 요청을 남겨주세요
                                                     <br></p>
                                                </div>
                                                <img src="https://cdn.discordapp.com/attachments/954273372760571914/957717837647081512/slider2.png">
                                            </a>
                                        </li>
                                        <li class="slideitem">
                                            <a>
                                                
                                                <div class="textbox">
                                                    <h3 class = "slideText media17">받은 요청 확인하기</h3>
                                                    <p class="media15">
                                                    ① 마이페이지 상단의 종 아이콘을 클릭
                                                    <br><br>
                                                    ② 내가 받은 요청의 목록을 볼 수 있습니다.
                                                    </p>
                                                </div>
                                                <img src="https://cdn.discordapp.com/attachments/954273372760571914/957717837814849576/slider3.png">
                                            </a>
                                        </li class="slideitem">
                                        
                            
                                        <!-- 좌,우 슬라이드 버튼 -->
                                        <div class="slide-control media14">
                                            <div>
                                                <label for="slide03" class="left"></label>
                                                <label for="slide02" class="right"></label>
                                            </div>
                                            <div>
                                                <label for="slide01" class="left"></label>
                                                <label for="slide03" class="right"></label>
                                            </div>
                                            <div>
                                                <label for="slide02" class="left"></label>
                                                <label for="slide01" class="right"></label>
                                            </div>
                                        </div>
                            
                                    </ul>
                                    <!-- 페이징 -->
                                    <ul class="slide-pagelist">
                                        <li><label for="slide01"></label></li>
                                        <li><label for="slide02"></label></li>
                                        <li><label for="slide03"></label></li>
                                    </ul>
                                </div>
                            
                                
                            </div>
                        </div>	
					</section>

				<!-- Three 커뮤니티 --> 
                </div>
                <img src = "https://cdn.discordapp.com/attachments/954273372760571914/955286970291068968/crop.jpg" style = "width: 100%;">
                <div id="main" class="container">
					<section id="three" class="feature">
                        <div style = "padding-left:10%; position: relative">
                            <h4 style ="margin-top:-50px; left:10px" class="media3">마미랑 커뮤니티에서 또래의 아기를 키우는 부모님 또는 시터들과 소통해보세요.</h4>
                                <h5 style = "margin-top:-11px;" class="media4">육아를 하면서 겪는 나만의 경험, 다양한 주제의 이야기들을 만나보세요.  </h5>
                            	<div style = "position:absolute; top:1px; right:10%;" class="media5">

                                <ul class="actions special">
                                    <li><a onclick="location.href='${pageContext.request.contextPath}/community/CommunityListOk.com'" class="button large media6">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;커뮤니티 가기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
                                </ul>
								
                       		 </div>
								<br><br>
						</div>
					</section>
				</div>
				<!-- 마지막 섹션  -->
				<div style = "position:relative; text-align: center;">
					<section id="four" class="feature major">
						<img src = "https://cdn.discordapp.com/attachments/954273372760571914/955478633571549224/lastBackground.png" style ="width: 100%; margin-bottom: -7px !important;" class="media7">
						<!-- position:absolute 중앙 정렬 -->
						<div style = "position:absolute; top:50%; left:50%; transform:translate(-50%, -45%);">
							<h2 class = "slideText media8" style = "color:#ff7065; font-size: 2.4em;">아이와 엄마가 행복해지는 마미랑</h2>
							<p style = "color: #2E3364; font-weight: bold;" class="media9"> 내 아이에게 딱 맞는 우리 동네 베이비시터, 마미랑으로 만나보세요.</p>
							<ul class="actions special">
							<c:choose>
								<c:when test="${userStatus eq 1}">
									<li><a href="${pageContext.request.contextPath}/service/SearchMomOk.ser" class="button large primary media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시터찾기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
								</c:when>
								<c:when test="${userStatus eq 2}">
									<li><a href="${pageContext.request.contextPath}/service/SearchJobOk.ser" class="button large primary media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일자리찾기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="${pageContext.request.contextPath}/user/UserJoin.user" class="button large primary media13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가입하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
								</c:otherwise>
							</c:choose>	
							</ul>
						</div>
						
					</section>

			</div>
  		<!-- Aside -->
  <div class="wrapper">
            <div class="inner">
               <jsp:include page="/app/fix/aside.jsp" flush="true"/>
            </div>
         </div> 
			
			
		 <!-- footer -->
			<div class="wrapper">
				<div class="inner">
				   <jsp:include page="/app/fix/footer.jsp" flush="true"/>
				</div>
			 </div>

	<!-- contextPath -->


		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	</body>
</html>