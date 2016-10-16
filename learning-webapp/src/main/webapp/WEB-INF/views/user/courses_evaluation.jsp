<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="../top.jsp" />

<section id="main_content" >
<div class="container">
<div class="row">

	<jsp:include page="menu.jsp" />

    
	<div class="col-md-8">
		<div class=" box_style_2">
			<span class="tape"></span>
			<div>
           		<p> Zapoznaj się z ocenami kursu</p>
				<h4>Twoje oceny</h4>
                
					 	<c:forEach items="${user.publications}" var="course">
							<table class="table table-striped">
                  
                        <h4>${course.name}</h4>
                          <c:forEach begin="1" end="5" var="star"><i title="${course.averageGrade}" class="${(star<=course.averageGrade) ? 'icon-star' : 'icon-star-empty' }"></i></c:forEach></span></h4>
                      <hr/>
                          <tr>
                          <c:forEach items="${course.grade} var="evaluation">
                            <td>${evaluation.user.name}</td>
                            <td>${evaluation}</td>
                            <td><a href="/evaluation/details/{id}">Szczegóły oceny</a></td>
                          </tr>
                          </c:forEach>
                      </table>
						</c:forEach>
             
                	
			</div>
		</div>
	</div>
</div>
</div>

</section>



<div id="toTop">Back to top</div>
<jsp:include page="../bottom.jsp" />

