<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="../top.jsp" />



<body onload='document.loginForm.username.focus();'>
<section id="login_bg">
<div  class="container">
<div class="row">
	<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
		<div id="login">
			<p class="text-center">
				<img src="img/login_logo.png" alt="">
			</p>
			<hr>
			
			<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
 
		<form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST'>
 
				<div class="form-group">
					<input type="text" name="username" class="form-control" placeholder="nazwa użytkownika">
					<span class="input-icon"><i class=" icon-user"></i></span>
				</div>
				<div class="form-group" style="margin-bottom:5px;">
					<input type="password" name="password" class="form-control" placeholder="hasło" style="margin-bottom:5px;">
					<span class="input-icon"><i class="icon-lock"></i></span>
				</div>
				<p class="small">
					<a href="#">Forgot Password?</a>
				</p>
				<input type="submit" class="button_fullwidth" value="Zaloguj się"/>
				<a href="register.html " class="button_fullwidth-2">Register</a>
				<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>
</div>
</section> <!-- End login -->

<jsp:include page="../bottom.jsp" />