<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.googleapis.com">
		 <script src="https://code.jquery.com/jquery-latest.min.js" type="application/javascript"></script>
  <script type="application/javascript" src="https://zelkun.tistory.com/attachment/cfile8.uf@99BB7A3D5D45C065343307.js"></script>
<link rel="preconnect" href="${pageContext.request.contextPath}/https://fonts.gstatic.com" >
<link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/assets/css/searchMom.css" rel="stylesheet" >
	
	</head>
	<body>
		
	
		<!-- 돌봄유형 모달창 -->
		  <div id="my_modal">
           <iframe src="${pageContext.request.contextPath}/app/modal/careType.jsp" border="0" frameborder="0" allowTransparency="true" scrolling='no'
            style="width:100; height:100; padding=0; display:yes; font-size:9pt;
          position: absolute;
    width: 110%;
    margin-left: -29px;
    height: 112%;
    margin-top: -40px;"
    class="modal"
			>대체 내용</iframe>  
            <a class="modal_close_btn"><img src="${pageContext.request.contextPath}/images/whiteX.png" style="width:20px;"></a>
        </div>
		
		

		
			<!-- 상세검색 모달창 -->
		  <div id="myModal2">
           <iframe src="${pageContext.request.contextPath}/app/modal/searchDetail.jsp" border="0" frameborder="0" allowTransparency="true" 
           scrolling='no' style="width:100; height:100; padding=0; display:yes; font-size:9pt;
		   position: absolute;
		    width: 116%;
		    margin-left: -44px;
		    height: 104%;
		    margin-top: -8px;
			"class="modal2">대체 내용</iframe>  
            <a class="modalCloseBtn2"><img src="${pageContext.request.contextPath}/images/whiteX.png" style="width:20px;"></a>
        </div>
		
		<!-- 돌봄지역을 선택해주세요 모달창 -->
		  <div id="myModal3">
         <div style="margin-top: 42px;">
		    <select id="sido" class="area">
		      <option value="">'시/도'를 선택해주세요</option>
		    </select>
		    <select id="sigugun" class="area">
		      <option value="">'시/군/구'를 선택해주세요</option>
		    </select>
		    <select id="dong" class="area">
		      <option value="">'동'을 선택해주세요</option>
		    </select>
		 
		  </div>
  
            <a class="modalCloseBtn3"><img src="${pageContext.request.contextPath}/images/grayX.png" style="width:20px;"></a>
        </div>
		
		
			<!-- 시터가 시터꺼 하트눌렀을 때  모달창 -->
		  <div id="myModal4">
           <iframe src="modal4.jsp" class="modal4" style="
		  position: absolute;
    width: 116%;
    margin-left: -9px;
    height: 104%;
    margin-top: -11px;
			">대체 내용</iframe>  
            <a class="modalCloseBtn4"><img src="${pageContext.request.contextPath}/images/whiteX.png" style="width:20px;"></a>
        </div>
		
		
		
		
		
<!-- Header -->
  <jsp:include page="../fix/header.jsp" flush="true"/>
			
			<!-- Main -->
			
			<div class="main">
			
			
				      <!-- Aside -->
       
        <jsp:include page="../fix/aside.jsp" flush="true"/>
        
        
        
        
			<br><br>
			<h3 style="font-family: 'GmarketSansLight';"> 베이비 시터 찾기</h3>
			 
				<!--돌봄지역, 돌봄 유형  -->
				<div class="locationFilter">
					<div class="locationImg">
						<img src="${pageContext.request.contextPath}/images/location2.png" style="width: 100%;" >
					</div>
					<span class="locationInput span" style="margin-left: 20px;
					 font-size: 13px; cursor: pointer;  color:#626c6e;"  
					 id="searchArea">
						돌봄지역을 선택해주세요.</span>
				
					
				</div>
				<div class="locationFilter">
					<div class="locationImg baby">
						<img src="${pageContext.request.contextPath}/images/baby2.png" style="width: 100%;" >
					</div>
					<span class="locationInput span" style="margin-left: 20px; font-size: 13px; cursor: pointer; color:#626c6e; "" id="careType">
						돌봄유형 선택하기.</span>
					
				</div>
	
				<!-- 상세검색 -->
				<div class="detailSearch" style="position:relative; ">
					<img src="${pageContext.request.contextPath}/images/filter.png" class="filter">
					<button class="detailSearchButton" id="searchDetail" style="cursor: pointer;"> &nbsp;&nbsp;&nbsp;&nbsp;상세검색</button>

				</div>









		<div class="userAll">
				<!-- 유저정보 -->

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart" id="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/img1.jpeg"class="userImgDetail">
			<div>
				<div class="certify">
				<p class="p">확인된 인증 <span class="span" style="color: rgb(247, 87, 87); font-weight: bold;">2</span>개</p>
				<input type="button" value="보험가입" class="certifyList primary" style="border-radius: 100px;">
				<input type="button" value="코로나 검사" class="certifyList primary" style="border-radius: 100px;">
				</div>
			</div>
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/lookSitterProfile2.jsp" style="border:none;">마미랑</a></h4>
			<div class="infoDetail">서울특별시 강남구</div>&nbsp;
			<div class="infoDetail">27세</div>
			&nbsp;&nbsp;<div class="infoDetail">희망시급 10000원</div>
		
			<div class="star">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			</div>
		
			<div class=chatIcon>
				<img src="${pageContext.request.contextPath}/images/chatIcon.png" style="width: 100%;margin-top: 5px; float: left;">
			</div>
			<span class="span" style="line-height: 2;">&nbsp;"유아교육과를 졸업하고 ..."</span>

		</div>	
	</div>
	
	

	
<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart" id="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/img1.jpeg"class="userImgDetail">
			<div>
				<div class="certify">
				<p class="p">확인된 인증 <span class="span" style="color: rgb(247, 87, 87); font-weight: bold;">2</span>개</p>
				<input type="button" value="보험가입" class="certifyList primary" style="border-radius: 100px;">
				<input type="button" value="코로나 검사" class="certifyList primary" style="border-radius: 100px;">
				</div>
			</div>
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/searchSitterProfile.jsp" style="border:none;">마미랑</a></h4>
			<div class="infoDetail">서울특별시 강남구</div>&nbsp;
			<div class="infoDetail">27세</div>
			&nbsp;&nbsp;<div class="infoDetail">희망시급 10000원</div>
		
			<div class="star">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			</div>
		
			<div class=chatIcon>
				<img src="${pageContext.request.contextPath}/images/chatIcon.png" style="width: 100%;margin-top: 5px; float: left;">
			</div>
			<span  class="span" style="line-height: 2;">&nbsp;"유아교육과를 졸업하고 ..."</span>

		</div>	
	</div>

	<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart" id="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/img1.jpeg"class="userImgDetail">
			<div>
				<div class="certify">
				<p class="p">확인된 인증 <span class="span" style="color: rgb(247, 87, 87); font-weight: bold;">2</span>개</p>
				<input type="button" value="보험가입" class="certifyList primary" style="border-radius: 100px;">
				<input type="button" value="코로나 검사" class="certifyList primary" style="border-radius: 100px;">
				</div>
			</div>
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/searchSitterProfile.jsp" style="border:none;">마미랑</a></h4>
			<div class="infoDetail">서울특별시 강남구</div>&nbsp;
			<div class="infoDetail">27세</div>
			&nbsp;&nbsp;<div class="infoDetail">희망시급 10000원</div>
		
			<div class="star">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			</div>
		
			<div class=chatIcon>
				<img src="${pageContext.request.contextPath}/images/chatIcon.png" style="width: 100%;margin-top: 5px; float: left;">
			</div>
			<span class="span" style="line-height: 2;">&nbsp;"유아교육과를 졸업하고 ..."</span>

		</div>	
	</div>
	
	
	
	
<div class="userPf">
		<img src="${pageContext.request.contextPath}/images/heart.png" class="heart" id="heart">
		
		<div class="userImg">
			<img src="${pageContext.request.contextPath}/images/img1.jpeg"class="userImgDetail">
			<div>
				<div class="certify">
				<p class="p">확인된 인증 <span  class="span" style="color: rgb(247, 87, 87); font-weight: bold;">2</span>개</p>
				<input type="button" value="보험가입" class="certifyList primary" style="border-radius: 100px;">
				<input type="button" value="코로나 검사" class="certifyList primary" style="border-radius: 100px;">
				</div>
			</div>
		</div>
		<div class="userName">
			<h4 style="margin-bottom: 0;"><a href="${pageContext.request.contextPath}/app/serviceProfile/searchSitterProfile.jsp" style="border:none;">마미랑</a></h4>
			<div class="infoDetail">서울특별시 강남구</div>&nbsp;
			<div class="infoDetail">27세</div>
			&nbsp;&nbsp;<div class="infoDetail">희망시급 10000원</div>
		
			<div class="star">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			<img src="${pageContext.request.contextPath}/images/star.png" style="width: 100%;">
			</div>
		
			<div class=chatIcon>
				<img src="${pageContext.request.contextPath}/images/chatIcon.png" style="width: 100%;margin-top: 5px; float: left;">
			</div>
			<span class="span" style="line-height: 2;">&nbsp;"유아교육과를 졸업하고 ..."</span>

		</div>	
	</div>

</div>
	</div>
<!-- footer -->
        <jsp:include page="../fix/footer.jsp" flush="true"/>

	</body>

		<!-- Scripts -->
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/searchMom.js"></script>
<script type="text/javascript" ></script>
	
</html>