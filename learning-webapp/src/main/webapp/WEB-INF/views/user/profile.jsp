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
				<h3>Cześć ${user.name}! Zarządzaj swoim profilem.</h3>
           		<p> Wybierz odpowiedni przycisk by dokonać edycji swojego profilu.</p>
				<h4>Twoje kursy</h4>
                   <ol class="list_1">
					 	<c:forEach items="${user.history}" var="course">
							<li><a href="#">${course.name}</a></li>
						</c:forEach>
                	</ol>
                	<br/>
                   <h4>Stan konta</h4>
                   <h5>Pozostało Ci: ${user.balance }zł</h5>
			</div>
		</div>
	</div>
</div>
</div>

</section>



<div id="toTop">Back to top</div>
<jsp:include page="../bottom.jsp" />

