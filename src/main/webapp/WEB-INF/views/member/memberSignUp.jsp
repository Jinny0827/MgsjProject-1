<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="/resources/SignUp/signup/sign-up.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div class="sign-up">
		<!-- method="post" action="서버url" -->
		<form id="sign-up" name="sign-up" action="/member/memberSignUp">
			<div class="member">
				<!-- 로고 -->
				<span class="main-logo">MGSJ</span>
				<!-- 필드 -->
				<div class="field">
					<b>아이디</b>
					<input class="user-id" id="userId" name="userId" type="text" placeholder="아이디를 입력하세요" maxlength="12" required="required">
					<div id="idError" class="error"></div>
				</div>
				<div class="field">
					<b>비밀번호</b>
					<input class="user-pwd" id="userPwd" name="userPwd" type="password" placeholder="비밀번호를 입력하세요" maxlength="20" required="required"/>
					<div id="pwdError" class="error"></div>
				</div>
				<div class="field">
					<b>비밀번호 확인</b>
					<input class="userpwd-re" id="rePwd" name="rePwd" type="password" placeholder="비밀번호 재입력" maxlength="20" required="required" />
					<div id="re-pwdError" class="error"></div>
				</div>
				<div class="field">
					<b>이름</b>
					<input id="userName" name="userName" type="text" placeholder="이름을 입력하세요" maxlength="20" />
					<div id="nameError" class="error"></div>
				</div>

				<div class="field">
					<b>이메일</b>
					<input id="userEmail" name="userEmail" type="email" placeholder="이메일을 입력하세요" maxlength="30" />
					<div id="emailError" class="error"></div>
				</div>

				<div class="field gender">
					<b>성별</b>
					<div>
						<label>
							<input id="gender_man" type="radio" name="userGender" value="M" checked="checked">
							남성
						</label>
						<label>
							<input id="gender_woman" type="radio" name="userGender" value="W">
							여자
						</label>
					</div>
					<div id="genderError" class="error"></div>
				</div>

				<div class="field tel-number">
					<b>휴대전화</b> <select>
						<option>대한민국 +82</option>
					</select>
					<div>
						<input type="tel" id="PhoneNumber" name="PhoneNumber" placeholder="전화번호를 입력하세요" />
						<input type="button" value="인증번호 받기">
					</div>
					<input type="tel" placeholder="인증번호를 입력하세요" />
				</div>
				<!-- 가입하기 버튼 -->
				<div class="signUp">
					<!-- 실전에서 button type submit으로 변경 -->
					<a href="#">
						<button type="submit" id="signUpBtn" onclick="signUpCheck()">가입하기</button>
					</a>
				</div>
			</div>
		</form>

		<div class="terms">
			<label for="agree">
				<input type="checkbox" name="agree" id="agree_all" value="selectAll" onclick="selectAll(this)">
				<span>모두 동의합니다</span>
			</label>
			<label for="agree">
				<input type="checkbox" name="agree" value="1">
				<span>
					이용약관 동의<strong>(필수)</strong>
				</span>
			</label>
			<label for="agree">
				<input type="checkbox" name="agree" value="2">
				<span>
					만 15세 이상 사용자<strong>(필수)</strong>
				</span>
			</label>
			<label for="agree">
				<input type="checkbox" name="agree" value="3">
				<span>
					개인정보 수집, 이용 동의<strong>(필수)</strong>
				</span>
			</label>
			<label for="agree">
				<input type="checkbox" name="agree" value="4">
				<span>
					개인정보 이용 동의<strong>(필수)</strong>
				</span>
			</label>
			<label for="agree">
				<input type="checkbox" name="agree" value="5">
				<span>
					이벤트, 혜택정보 수신동의<strong class="select_disable">(선택)</strong>
				</span>
			</label>
		</div>
		<hr />
	</div>
</body>
<script src="/resources/SignUp/signup/sign-up.js"></script>
</html>