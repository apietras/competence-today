<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
			<div class="alert alert-danger" role="alert"><spring:message code="login.error"/></div>
		</c:if>
		
 
		<form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST'>
 
				<div class="form-group">
					<c:set var="loginPlaceholder"><spring:message code="login.email"/></c:set>
					<input type="text" name="username" class="form-control" placeholder="${loginPlaceholder}">
					<span class="input-icon"><i class=" icon-user"></i></span>
				</div>
				<div class="form-group" style="margin-bottom:5px;">
					<c:set var="passwordPlaceholder"><spring:message code="login.password"/></c:set>
					<input type="password" name="password" class="form-control" placeholder="${passwordPlaceholder}" style="margin-bottom:5px;">
					<span class="input-icon"><i class="icon-lock"></i></span>
				</div>
				<p class="small">
					<a href="user/forgot/password"><spring:message code="login.forgot.password"/></a>
				</p>
				<input type="submit" class="button_fullwidth" value="<spring:message code="login.login.button"/>"/>
				<a href="user/registration" class="button_fullwidth-2"><spring:message code="login.register.button"/></a>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>
</div>
</section> <!-- End login -->

<jsp:include page="../bottom.jsp" />