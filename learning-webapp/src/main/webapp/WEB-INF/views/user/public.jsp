<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="../top.jsp" />


<section id="sub-header">
<div class="container">
	<div class="row">
		<div class="col-md-10 col-md-offset-1 text-center">
			<h1>Poznaj autorów kursu</h1>
			<p class="lead">To oni dzielą się swoją wiedzą by pomóc Ci w rozwoju.</p>
		</div>
	</div><!-- End row -->
</div><!-- End container -->
<div class="divider_top"></div>
</section><!-- End sub-header -->

<section id="main_content">

<div class="container">

<ol class="breadcrumb">
  <li><a href="index.html">Home</a></li>
  <li class="active">Autor</li>
</ol>
      <div class="row">
     <aside class="col-md-4">
     	<div class=" box_style_1 profile">
		<p class="text-center"><img src="${user.photo }" alt="Teacher" class="img-circle styled"></p>
        		  <ul class="social_teacher">
                    <li><a href="${user.linkedin }"><i class="icon-linkedin"></i></a></li>
                </ul>   
                 <ul> 
                     <li>Imię i nazwisko <strong class="pull-right">${user.name } ${user.surname }</strong> </li>
                     <c:forEach items="${user.publications}" var="course">
                     <li><a href="course/details/${course.id }">${course.name }</a></li></c:forEach>
                  
                </ul>
              
			</div><!-- End box-sidebar -->
     </aside><!-- End aside -->
     
     <div class="col-md-8">
     
     			<!--  Tabs -->   
                    <ul class="nav nav-tabs" id="mytabs">
                        <li class="active"><a href="#profile_teacher" data-toggle="tab">Profil</a></li>
                        <li><a href="#contact" data-toggle="tab">Kontakt</a></li>
                    </ul>
                    
                     <div class="tab-content">
                    
                        <div class="tab-pane fade in active" id="profile_teacher">
                        <h3>O mnie</h3>
                        <p>${user.description }</p>
                     	<h4>Doświadczenie</h4>
                     	<p>${user.experience }</p>
						
                       </div><!-- End tab-pane --> 
                       
                       <div class="tab-pane fade in" id="contact">
                       			<h3>Możliwość skontaktowania się z autorem zostanie dodana niedługo.</h3>
                        		
                       </div><!-- End tab-pane -->
                       
                  </div>   <!-- End content-->              
		
     </div><!-- End col-md-8-->   	
  </div><!-- End row-->   
</div><!-- End container -->
</section><!-- End main_content-->


<jsp:include page="../bottom.jsp" />

