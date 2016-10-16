<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
			<form:form method="post" id="addcuser" modelAttribute="form">
			 <c:if test="${pageContext.request.method=='POST'}">   
                     <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                     </c:if>
				<div class="form-group">
					<c:set var="namePlaceholder"><spring:message code="register.name"/></c:set>
					<form:input type="text" class=" form-control required" id="name" path="name" placeholder="${namePlaceholder}"></form:input>
					<span class="input-icon"><i class=" icon-user"></i></span>
				</div>
				<div class="form-group">
					<c:set var="surnamePlaceholder"><spring:message code="register.surname"/></c:set>
					<form:input type="text" class=" form-control required" id="surname"  path ="surname" placeholder="${surnamePlaceholder}"></form:input>
					<span class="input-icon"><i class=" icon-user"></i></span>
				</div>
				<div class="form-group">
					<c:set var="emailPlaceholder"><spring:message code="register.email"/></c:set>
					<form:input type="text" class=" form-control required" id="email" path="email" placeholder="${emailPlaceholder}"></form:input>
					<span class="input-icon"><i class="icon-email"></i></span>
				</div>
				<div class="form-group">
				<form:checkbox  id="author" path="author"/>&nbsp;&nbsp;<spring:message code="register.question"/>
				</div>
				<div class="form-group">
					<c:set var="passwordPlaceholder"><spring:message code="register.password"/></c:set>
					<form:input type="password" class=" form-control required" id="password1" path="password" placeholder="${passwordPlaceholder}"></form:input>
					<span class="input-icon"><i class=" icon-lock"></i></span>
				</div>
				<div class="form-group">
					<c:set var="passwordRetypePlaceholder"><spring:message code="register.retype.password"/></c:set>
					<form:input type="password" class=" form-control required" id="password2" path="retypePassword" placeholder="${passwordRetypePlaceholder}"></form:input>
					<span class="input-icon"><i class=" icon-lock"></i></span>
				</div>
                <div id="pass-info" class="clearfix"></div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<input type="submit" class="button_fullwidth" value="<spring:message code="register.register.button"/>"></i>
			</form:form>
		</div>
	</div>
</div>
</div>
</section><!-- End register -->
