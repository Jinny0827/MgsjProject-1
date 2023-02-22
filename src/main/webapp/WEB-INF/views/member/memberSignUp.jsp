<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트폼</title>
</head>
<body>
	<div class="container">
		<form action="/member/memberSignUp" method="post">
			<div>
				<label for="id">아이디</label>
				<input type="text" id="userId" name="userId"/>
			</div>
			<div>
				<label for="password">비밀번호</label>
				<input type="password" id="userPwd" name="userPwd"/>
			</div>
			<div>
				<label for="name">이름</label>
				<input type="text" id="userName" name="userName"/>
			</div>
			<div>
				<label for="phoneNum">폰번</label>
				<input type="tel" id="userPhoneNumber" name="userPhoneNumber" />
			</div>
			<div>
				<label for="email">이메일</label>
				<input type="email" id="userEmail" name="userEmail"/>
			</div>
			<!-- <div>
				<label for="post">우편번호</label>
				<input type="text" id="postAddress" name="postAddress"/>
			</div>
			<div>
				<label for="address">상세주소1</label>
				<input type="text" id="address" name="address"/>
			</div>
			<div>
				<label for="detailAddress">상세주소2</label>
				<input type="text" id="detailAddress" name="detailAddress"/>
			</div> -->
			<div>
				<input type="radio" name="userGender" value="F">
				<label for="check"> 여 </label>
				<input type="radio" name="userGender" value="M">
				<label for="check"> 남 </label>
			</div>
			<button type="submit">회원가입</button>
		</form>
	</div>
</body>
</html>