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
           		<p> Zapoznaj się z feedbackiem od użytkownika.</p>
				<h4>Ocena</h4>
                
					 	<c:forEach items="${grade}" var="grade">
							<table class="table table-striped">
                  
                        <h4>${grade.user.name}</h4>
                          <c:forEach begin="1" end="5" var="star"><i title="${grade.course.averageGrade}" class="${(star<=course.averageGrade) ? 'icon-star' : 'icon-star-empty' }"></i></c:forEach></span></h4>
                      <hr/>
                          <tr>
                            <td>Rekomendacja<br/>${grade.recommendation}</td>
                            <td>Wrażenia ogólne <br/>${grade.generalFeelings}</td>
                            <td>Mocne strony: <br/>${grade.strengths}</td>
                            <td>Sugerowane zmiany: <br/>${grade.recommendedChanges}</td>
                            </c:forEach>
                            <td><a href="/user/profile/${user.id}">Powrót</a></td>
                          </tr>
                                              </table>

             
                	
			</div>
		</div>
	</div>
</div>
</div>

</section>



<div id="toTop">Back to top</div>
<jsp:include page="../bottom.jsp" />

