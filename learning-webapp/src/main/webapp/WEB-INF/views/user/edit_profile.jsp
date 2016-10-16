<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="../top.jsp" />

<section>
<div class="container">
<div class="row">
<jsp:include page="../user/menu.jsp" />
<div class="col-md-8">
<br/>
<br/>
		<div class=" box_style_2">
			<span class="tape"></span>
			<div class="row">
				<div class="col-md-12">
					<h3>Edytuj profil</h3>
				</div>
			</div>
			<div id="message-apply"></div>
			<form:form method="post" modelAttribute="form" id="user_edit">
			 <c:if test="${pageContext.request.method=='POST'}">   
                     <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                     </c:if>
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<form:input type="text" class="form-control style_2" id="name_apply" path="name" placeholder="Imię"></form:input>
                            <span class="input-icon"><i class="icon-user"></i></span>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<form:input type="text" class="form-control style_2" id="lastname_apply" path="surname" placeholder="Nazwisko"></form:input>
                            <span class="input-icon"><i class="icon-user"></i></span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<form:input type="email" id="email_apply" path="email" class="form-control style_2" placeholder="Email"></form:input>
                            <span class="input-icon"><i class="icon-email"></i></span>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
					<form:checkbox  id="author" path="author"/> &nbsp; &nbsp;Czy chcesz też publikować własne kursy?
					</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<form:input type="text" id="company_apply" path="company" class="form-control style_2" placeholder="Firma"></form:input>
                            <span class="input-icon"><i class="icon-briefcase"></i></span>
						</div>
				
              
               
						<div class="form-group pull-right">
							<input type="submit" value="Zapisz" class=" button_medium" id="submit-apply"/> <div class="form-group pull-right">
							&nbsp;&nbsp;&nbsp;<a href="user/delete/${user.id}" onclick="return confirm('Czy na pewno chcesz usunąć konto i wszystkie jego dane?')" class="button_medium_outline" style="
    color: #c0c0c0;
    border: 2px solid #c0c0c0;
" id="delete_account">Usuń konto</a>
					</div>
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

