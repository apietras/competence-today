<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../top.jsp" />

<section>
<div class="container">
<div class="row">
<jsp:include page="menu.jsp" />
<div class="col-md-8">
<br/>
<br/>
		<div class=" box_style_2">
			<span class="tape"></span>
			<div class="row">
				<div class="col-md-12">
					<h3>Zmień hasło</h3>
				</div>
			</div>
			<div id="message-apply"></div>
			<form:form method="post" modelAttribute="form" id="change_password">
			 <c:if test="${pageContext.request.method=='POST'}">   
                     <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                     </c:if>
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<form:input type="password" class="form-control style_2" id="name_apply" path="password" placeholder="Hasło"></form:input>
                            <span class="input-icon"><i class="icon-star"></i></span>
						</div>
					</div>
					
				</div>
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
					<form:input type="password" class=" form-control required" id="password1" path="newPassword" placeholder="Nowe hasło"></form:input>
					<span class="input-icon"><i class=" icon-lock"></i></span>
				</div>
				</div>
				<div class="col-md-6 col-sm-6">
				<div class="form-group">
					<form:input type="password" class=" form-control required" id="password2" path="retypeNewPassword" placeholder="Potwierdź hasło"></form:input>
					<span class="input-icon"><i class=" icon-lock"></i></span>
				</div>
				</div>
                <input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
					</div>
				<div class="row">
					<div class="col-md-12 col-sm-6">
						<div class="form-group pull-right">
							<input type="submit" value="Zapisz" class=" button_subscribe_green" id="submit-apply"/>
					</div>
				</div>
                </div>
			</form:form>
		</div>
	</div>
</div>
</div>
</section>

<div id="toTop">Back to top</div>

<jsp:include page="../bottom.jsp" />

