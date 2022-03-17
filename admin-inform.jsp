<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
   Exponent by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
   <head>
      <title>관리자 페이지</title>
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" >
      <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin.css"  type="text/css"/>
   </head>
   <body class="is-preload" style="display:block; padding-top: 0; overflow-y: hidden">



      <!-- Main -->
         <div id="main" class="container">
               <!-- 배너 -->
         <div class="mainBox" style="padding-top: 3.5em;">
         	<a href="${pageContext.request.contextPath}/app/admin/admin.jsp"><img src="${pageContext.request.contextPath}/images/로고1.png" style="width: 9%; position: absolute; margin: -50px 0px 0 26px;"></a>
            <h3 class="caption" style="position: absolute; margin: -46px 0px -1px 207px; padding-left: 20px;">관리자 페이지</h3>
            <ul class="actions small">
               <li><span id="memberList" class="s-title text bGray" style="padding: 0em 0 0 10em;" >공지</span></li>

            </ul>
         </div>
				<!-- Three -->
					<section id="three" class="feature">
						<div class="row row-total main-total" style="display: flex; justify-content: center; margin-right: 0em;">
								<div class="side-header">
               <a href="${pageContext.request.contextPath}/app/admin/admin.jsp" style="border-bottom:2px solid #ffb61a;"><p id="total" class="s-title text bYellow">통계 </p></a>
               <a href="${pageContext.request.contextPath}/app/admin/adminQna.jsp"><p id="qna" class="s-title text bGray" >문의</p></a>
               <a href="${pageContext.request.contextPath}/app/admin/adminReport.jsp"><p id="report" class="s-title bGray" >신고</p></a>
               <a href="${pageContext.request.contextPath}/app/admin/adminAuth.jsp"><p id="auth" class="s-title bGray">인증</p></a>
               <a href="${pageContext.request.contextPath}/app/admin/adminMList.jsp"><p id="memberList" class="s-title bGray" >회원목록</p></a>
               <a href="${pageContext.request.contextPath}/app/admin/admin-inform.jsp"><p id="inform" class="s-title bGray" >공지</p></a>
			</div>
								<div class="twoBox">
									<div class="col-6 col-12-small" style=" margin-left: -3em; margin-top: -0.5em;">
										<section id="content" style="width: 100%; padding: 0 0 0 0; font-size: 14px;">
          								<div style="">
												<input type="checkbox" id="copy" name="copy">
												<label for="copy" style="margin-left: 0.7em;">전체선택</label>
												<input type="button"  value="삭제" style="font-size:14px;">
               									<input type="button" value="글쓰기" onclick="location.href='admin-informDetail.jsp'" style="float: right; font-size:14px;">
											</div>
               							<table>
                  							<tr>
                     							<td style="width:86.8px;"></td>
                     							<td>번호</td>
                     							<td>제목</td>
                     							<td>작성자</td>
                     							<td>작성일</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">1</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
                  							<tr>
                  								<td class="checkInf"><input type="checkbox" id="a"name="copy"><label for="a"></label></td>
                     							<td style="">14</td>
                    							<td> 자동 코딩 로봇 만들어줘</td>
                     							<td>???</td>
                     							<td>2022-03-04</td>
                  							</tr>
               							</table>
               						<!-- 페이징 처리 -->	
										<table style="text-align:center;">
											<tr>
												<td >1 2 3 4 5 6 7 8 9 10 </td>
											</tr>	
										</table>
									</section>
									</div>
									</div>
								<div class="col-6 col-12-small v-total" style="width: 30%; display:table; height: 400px; border: 1px solid #bbb; border-radius: 3px; padding-top: 1em;">
									<div class="oneBox" style="margin-bottom: 3%; width: 35%; display: contents;">
										<a class="title" href="#">
											<span class="s-title link-title" >통계</span>
										</a>
										<hr>
										<hr>
										<div class="sBox" style="display: flex; border-top: 1px solid #d8dadb; padding-top: 1em;">
										<div style="width: 100%;">
											<span class="s-title link-title" >대기중</span>
											<p>4개</p>
										</div>
									</div>
		
									<div class="sBox" style="border-bottom: 1px solid #d8dadb; border-top: 1px solid #d8dadb; display: flex; padding-top: 1em; padding-bottom: 1em;">
										<div style="width: 50%; border-right: 1px solid #d8dadb;">
											<span class="s-title link-title" >글개수</span>
											<hr>
											<p>600개</p>
										</div>
										<div style="width: 50%; padding-left:1em">
											<span class="s-title link-title" >일평균</span>
											<p>85개</p>
										</div>
									</div>

									
								</div>
							</div>
						</section>
					</div>
									
		<!-- Scripts -->
			<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
			<script src="${pageContext.request.contextPath}/assets/js/admin.js"></script>
	</body>
</html>								