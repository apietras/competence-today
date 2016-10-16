<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="../top.jsp" />
<br/>
<br/>
<div class="col-md-12">
		<div class=" box_style_2">
			<span class="tape"></span>
			<form:form method="post" id="addlesson" modelAttribute="form">
					<h3>Nowa lekcja</h3>
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

                  Załączniki:
							<div class="form-group">
                            <span class="input-icon"><i class="icon-photo"></i></span>
							<input type="file" class="form-control style_2" id="lastname_apply" name="lastname_apply" placeholder="">
                            
						</div>
                    					<div class="col-md-12">
                <div class="row">
                    					Dodane załączniki:
                    					<div class="row">
                    					<div class="col-md-1" style="text-align:right; padding-top:3px"><i class="icon-heart"></i></div>
                    					<div class="col-md-3">Załącznik 1 </div>
<div class="col-md-1"><button type="button" class="btn btn-danger btn-xs">Usuń</button></div>

                    				</div>
                    				
               
						 <p align="right">
  <input type="submit" value="Zapisz" class="btn btn-info"/>
<button type="button" class="btn btn-warning">Zapisz i dodaj  kolejną lekcję</button>            
        </p>
<br />
				</div>
                </div>
                </div>
                </div>
			</form:form>
		</div>
	</div>
</div>
<jsp:include page="../bottom.jsp" />
