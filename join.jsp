<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="Join">
    <label for="name">이름</label>
    <input type="text" id="name" name="name">
    <p>성별</p>
    <label><input type="radio" name="gender" value="woman" >여자</label>
    <label><input type="radio" name="gender" value="man">남자</label>
    <br>
    <label for="phoneNum">전화번호</label>
    <input type="text" id="phoneNum" placeholder="-는 빼고 입력해주세요" name="phoneNum">
    <br>
    <label for="birth">생년월일</label>
    <input type="date" id="birth" name="birth" >
    <br>
    <label for="userID">아이디(이메일)</label>
    <input type="text" id="userID" name="userID">
    <br>
    <label for="userPW">비밀번호</label>
    <input type="text" id="userPW" name="userPW">
    <br>
    <button type="submit" >확인</button>



    </form>
</body>
</html>