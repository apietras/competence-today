<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<jsp:include page="../top.jsp" />
<br/>
<br/>
<div class="col-md-12">
		<div class=" box_style_2">
			<span class="tape"></span>
			<form:form method="post" id="editcourse" modelAttribute="form" accept-charset="UTF-8">
			<div class="row">
				<div class="col-md-12">
					<h3>Edytuj kurs</h3>
                     <br>
                        <c:if test="${pageContext.request.method=='POST'}">   
                     <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                     </c:if>
Nazwa kursu:
						<div class="form-group">
							<form:input type="text" id="name" path="name" class="form-control style_2" placeholder=""></form:input>
                            <span class="input-icon"><i class="icon-heart"></i></span>
						</div>
				</div>
			</div>
			<div id="message-apply"></div>
				<div class="row">
                    					<div class="col-md-12">

                    Opis kursu:
						<div class="form-group">
							<form:textarea rows="5" id="description" path="description" class="form-control" placeholder="Krótki opis kursu" style="height:100px;"></form:textarea>
						</div>

				Czego uczestnik się nauczy:
						<div class="form-group">
							<form:textarea rows="5" id="learningPoints" path="learningPoints" class="form-control" placeholder="Lista umiejętności, obszarów wiedzy, którą pokrywa Twój kurs. Wypisz je od myślników." style="height:100px;"></form:textarea>
						</div>
					</div>
				</div>
                <div class="row">
                    					<div class="col-md-6">
                   Cena:
						<div class="form-group">
<form:input type="text" id="price" path="price" class="form-control style_2" placeholder=""></form:input>					</div>
					</div>
					
				<div class="col-md-6">
                   Cena dla firm:
						<div class="form-group">
<form:input type="text" id="corporate-price" path="CorporatePrice" class="form-control style_2" placeholder=""></form:input>				</div>
					</div>
				</div>	
					

                 <div class="row">
                    					<div class="col-md-12">
                 
               
						 <p align="right">
  <input type="submit" class="btn btn-info" value="Zapisz" />
<button type="button" class="btn btn-warning">Zapisz i dodaj lekcje</button>            
 <a href="course/delete/${course.id}" type="button" class="btn btn-danger" onclick="return confirm('Czy na pewno chcesz usunąć ten kurs?')">Usuń</a>
        </p>
<br />
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
