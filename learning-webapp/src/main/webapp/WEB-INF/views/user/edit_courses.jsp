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
           		<p> Wybierz odpowiedni kurs, a następnie przejdź do jego edycji lub zapoznaj się z opinią uczniów.</p>
				<h4>Twoje kursy</h4>
                   <ol class="list_1">
					 	<c:forEach items="${user.publications}" var="course">
							<li>${course.name}<a href="course/edit/${course.id }">Edytuj</a><a href="course/evaluation/${course.id }">Oceny</a></li>
						</c:forEach>
                	</ol>
                	
			</div>
		</div>
	</div>
</div>
</div>

</section>



<div id="toTop">Back to top</div>
<jsp:include page="../bottom.jsp" />

