<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../top.jsp" />
<section>
<div class="container">
<div class="row">
 
<div class="col-md-8">
		<div class=" box_style_2" style="margin-top:30px">
			<span class="tape"></span>
			<div class="row">
				<div class="col-md-12">
					<h3><spring:message code="contact.header"/></h3>
                    <spring:message code="contact.lead"/><br/> <br/>

			</div>
			<div id="message-apply"></div>
			<form:form method="post" modelAttribute="form">
				<c:if test="${pageContext.request.method=='POST'}">   
                     <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                </c:if>
				<div class="row">
                	<div class="col-md-6">

						<c:set var="senderLabel"><spring:message code="contact.label.sender"/></c:set>
						<div class="form-group">
							<form:input type="text" path="email" class="form-control style_2" placeholder="${senderLabel}"></form:input>
                            <span class="input-icon"><i class="icon-mail"></i></span>
						</div>

						<c:set var="subjectLabel"><spring:message code="contact.label.subject"/></c:set>
						<div class="form-group">
							<form:input type="text" path="subject" class="form-control style_2" placeholder="${subjectLabel}"></form:input>
                            <span class="input-icon"><i class="icon-heart"></i></span>
						</div>
                    </div>
                    
					<div class="col-md-6">

						<c:set var="messageLabel"><spring:message code="contact.label.message"/></c:set>
						<div class="form-group">
							<form:textarea style="height:110px" id="company_apply" path="message" class="form-control style_2" placeholder="${messageLabel}"></form:textarea>
                        </div>
              
               
						<div class="form-group pull-right">
							<c:set var="submitLabel"><spring:message code="contact.label.submit"/></c:set>
							<input type="submit" value="${submitLabel}" class=" button_medium" id="submit-apply"/>
						</div>
					</div>
                </div>
			</form:form>
		</div>
	</div>
</div>
</div>
</div>
</section>

<jsp:include page="../bottom.jsp" />
