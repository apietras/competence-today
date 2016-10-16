<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
					<h3>Edytuj Biografię</h3>
                    Dodaj swój opis, aby zwiększyć swoją wiarygodność i przedstawić siebie jako eksperta w danej dziedzinie. <br>
<p style="font-size:0.5em"></p><i>Zamieszcznone tutaj informacje będą dostępne dla osób przeglądających kursy. </i></p>
				</div>
			</div>
			<div id="message-apply"></div>
			<form:form method="post" modelAttribute="form" id="bio_user_form_">
			 <c:if test="${pageContext.request.method=='POST'}">   
                     <form:errors path="*" element="div" cssClass="alert alert-danger"></form:errors>
                     </c:if>
				<div class="row">
                    					<div class="col-md-12">

                    Podsumowanie biografii:
						<div class="form-group">
							<form:textarea rows="5" id="description" path="description" class="form-control" placeholder="Krótki opis Twojej osoby (nie powinien przekraczać 3-4 zdań)" style="height:100px;"></form:textarea>
						</div>
					</div>
				</div>
                <div class="row">
                    					<div class="col-md-12">

                    Doświadczenie i edukacja:
						<div class="form-group">
							<form:textarea rows="5" id="experience" path="experience" class="form-control" placeholder="Opisz krótko w jaki sposób zostałeś ekspertem" style="height:100px;"></form:textarea>
						</div>
					</div>
				</div>
				<div class="row">
                    					<div class="col-md-12">
				
                Zdjęcie:
                
				
						<div class="form-group">
                            <span class="input-icon"><i class="icon-photo"></i></span>
							<form:input type="file" class="form-control style_2" id="photo" path="photo" placeholder=""></form:input>
                            
						</div>
				</div>
				</div>
				
				<div class="row">
                    					<div class="col-md-12">
				
				Linkedin:
						<div class="form-group">
							<form:input type="text" id="linkedin" path="linkedin" class="form-control style_2" placeholder="link do LinkedIn"></form:input>
                            <span class="input-icon"><i class="icon-linkedin"></i></span>
						</div>
				</div>
              </div>
               <div class="row">
                    					<div class="col-md-12">
               
						<div class="form-group pull-right">
							<input type="submit" value="Zapisz" class=" button_medium" id="submit-apply"/>
					</div><br />
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

