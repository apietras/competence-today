<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="../top.jsp" />
<br/>
<br/>
<div class="col-md-12">
		<div class=" box_style_2">
			<span class="tape"></span>
			<form:form method="post" id="editlesson" modelAttribute="form">
					<h3>Edytuj lekcję</h3>
                     <br>
                      <c:if test="${pageContext.request.method=='POST'}">   
                     <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                     </c:if>
			<div class="row">
				<div class="col-md-2">
Numer lekcji:
						<div class="form-group">
							<form:input type="text" id="order" path="order" class="form-control style_2" placeholder=""></form:input>
                            <span class="input-icon"><i class="icon-edit"></i></span>
						</div>
				</div>
				<div class="col-md-10">
Nazwa lekcji:
						<div class="form-group">
							<form:input type="text" id="name" path="name" class="form-control style_2" placeholder=""></form:input>
                            <span class="input-icon"><i class="icon-star"></i></span>
						</div>
				</div>
			</div>
				
				<div class="row">
                    					<div class="col-md-12">

                    Treść:
						<div class="form-group">
							<form:textarea rows="5" id="content" path="content" class="form-control ckeditor" placeholder="Treść lekcji" style="height:200px;"></form:textarea>
						</div>
					</div>
				</div>
                <div class="row">
                	<div class="col-md-12">
						 <p align="right">
  							<input type="submit" value="Zapisz" class="btn btn-info"/>
							<a href="lesson/delete/${lesson.id}" type="button" class="btn btn-danger" onclick="return confirm('Czy na pewno chcesz usunąć ten kurs?')">Usuń</a>          
        				</p>
					</div>
                </div>
			</form:form>
			<h2>Załączniki</h2>
			<form action="lesson/upload/attachment/${lesson.id}" method="post" enctype="multipart/form-data">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<div class="row">
					<div class="col-md-11">
						<div class="form-group">
                            <span class="input-icon"><i class="icon-photo"></i></span>
							<input type="file" class="form-control style_2" name="file" />
						</div>
					</div>
					<div class="col-md-1">
				 		<input type="submit" class="btn btn-default btn-block" value="Prześlij" />
					</div>
				</div>
			</form>
               <div class="row">
            		<div class="col-md-12">
               		Dodane załączniki:
               		<c:forEach items="${attachments}" var="attachment">
                		<div class="row">
	                		<div class="col-md-1" style="text-align:right; padding-top:3px"><i class="icon-heart"></i></div>
	                		<div class="col-md-3">${attachment.name} (${attachment.size/1024} kB)</div>
							<div class="col-md-1"><a href="lesson/delete/attachment/${attachment.id}" onclick="return confirm('Czy na pewno chcesz usunąć ten załącznik?')" class="btn btn-danger btn-xs">Usuń</a></div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="../bottom.jsp" />
