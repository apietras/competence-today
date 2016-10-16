<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../top.jsp" />

 <section id="sub-header" >
  	<div class="container">
    
    	<div class="row">
        	<div class="col-md-12 text-center">
            	<h1>${lesson.course.name }</h1>
            </div>
        </div><!-- End row -->
    
    </div><!-- End container -->
    <div class="divider_top"></div>
  </section>
 
  <section id="main_content">
  <div class="container">
  
  <ol class="breadcrumb">
      <li><a href="/home">Główna</a></li>
      <li><a href="course/details/${lesson.course.id}">${lesson.course.name}</a></li>
      <li class="active">Lekcja ${lesson.order}: ${lesson.name}</li>
    </ol>

	 <div class="row">
     		<div class="col-md-8">
            <h4>Lekcja ${lesson.order }:</h4>
            <h2>${lesson.name }</h2>
             <p> ${lesson.content}
                         <hr>
                         <!--  
            <div class="clearfix text-center"><a href="#" class="pull-left button_medium_outline"> <i class="icon-left-open"></i></a><a href="#" class="button_medium_outline">Oznacz jako ukończoną</a>   <a href="#" class="pull-right button_medium_outline"><i class="icon-right-open"></i></a></div>
            -->
            </div><!-- End col-md-8  -->
            
            <aside class="col-md-4">
            
       	 	<div class="box_style_1">
                    <h4>Pobierz załączniki <i class="icon-download pull-right"></i></h4>
                    <ul class="list_1">
                        <c:forEach items="${attachments}" var="attachment">
                          	<li><a href="lesson/attachment/download/${attachment.id}">${attachment.name} (<fmt:formatNumber type="number" maxFractionDigits="2" value="${attachment.size/1024}" /> kB)</a></li>
                        </c:forEach>
                     </ul>
                	<h4>Autor</h4>
                    <div class="media">
                        <div class="pull-right">
                            <img src="${lesson.course.author.photo }" class="img-circle" alt="">
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading"><a href="#">${lesson.course.author.name }&nbsp;${lesson.course.author.name }</a></h5>
                            <p>
                                ${lesson.course.author.description } 
                            </p>
                        </div>
                    </div>
                    
                  
           </div>
     
         </aside> <!-- End col-md-4 -->
     	
     </div><!-- End row -->
  </div><!-- End container -->
  </section>
 

<jsp:include page="../bottom.jsp" />
