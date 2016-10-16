<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<jsp:include page="../top.jsp" />
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
 
		<form:form name='forgotPasswordForm' modelAttribute="form"  method='POST'>
 			<h3>Przypomnij hasło</h3>
				<div class="form-group">
					<form:input type="text" path="email" class="form-control" placeholder="adres e-mail"></form:input>
					<span class="input-icon"><i class=" icon-mail"></i></span>
				</div>
			
				<input type="submit" class="button_fullwidth" value="Resetuj hasło"/>
				
				<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
			</form:form>
		</div>
	</div>
</div>
</div>
</section> <!-- End login -->

<jsp:include page="../bottom.jsp" />