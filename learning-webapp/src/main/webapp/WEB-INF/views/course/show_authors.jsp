<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<jsp:include page="../top.jsp" />


<section id="main_content">
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">Autorzy</li>
		</ol>

		<div class="row">


			<div class="col-md-12">
				<div class="row">
				
				<c:forEach items="${authors}" var="user">
				
                    	<div class="col-md-6 col-sm-6">
                        	<div class=" box_style_3">
                            	<p><img src="${user.photo}" alt="Teacher" class="img-circle styled"></p>
                                <h4 class="p-title">${user.name} ${user.surname} </h4>
             					<p> ${fn:substring(user.description, 0,180)...}</p>
                                <ul class="social_team">
                                    <li><a href="${ user.linkedin}"><i class="icon-linkedin"></i></a></li>
                                   
							</ul>    
                            <hr>
                             <a href="user/public/${user.id}" class="button_medium_outline">Szczegóły profilu</a>           
                            </div>
                        </div>
                       
</c:forEach>
					
				</div>
				<!-- End row -->
			</div>
			<!-- End col-lg-9-->



		</div>

		</div>
		
</section>
		
	</div>
	<!-- End container -->
</section>
<!-- End main_content -->
<jsp:include page="../bottom.jsp" />
