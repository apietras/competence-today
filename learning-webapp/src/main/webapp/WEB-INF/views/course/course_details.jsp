<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:include page="../top.jsp" />
<section id="sub-header">
  	<div class="container">
    
    	<div class="row">
        	<div class="col-md-12 text-center">
            	<h1>${course.name}</h1>
                <p class="lead">Autor:&nbsp;${course.author.name} ${course.author.surname}</p>
            </div>
        </div><!-- End row -->
        
        <div class="row" id="sub-header-features-2">
        	<div class="col-md-6">
            	<h2>Opis kursu:</h2>
            	
                <p>${course.overview}</p>
            </div>
            <div class="col-md-6">
            	<h2>Czego się nauczysz?</h2>
                <ul class="list_ok">
                <c:forTokens items="${course.learningPoints}" delims="-" var="line">
   <li><strong>${line }</strong> </li>
</c:forTokens>
                </ul>
           </div>
        	
        </div><!-- End row -->
    </div><!-- End container -->
    <div class="divider_top"></div>
  </section>
  
  <section id="main_content">
  <div class="container">
  
  <ol class="breadcrumb">
      <li><a href="home">Home</a></li>
      <li><a href="course/show">Kursy</a></li>
      <li class="active">Kursy</li>
    </ol>

	 <div class="row">
     		<div class="col-md-8">
                    <c:forEach items="${course.lessons}" var="lesson" varStatus="index">
                    <h3 class="chapter_course no_margin_rop">
	                    <c:choose>
	                    	<c:when test="${enrolled}"><a href="lesson/view/${lesson.id }">Lekcja ${lesson.order}: ${ lesson.name}</a></c:when>
	                    	<c:otherwise>Lekcja ${index.index}: ${ lesson.name}</c:otherwise>
	                    </c:choose>
                    </h3>
                    <div class="strip_single_course">
                        <h4> ${fn:substring(lesson.content, 0,35)}</h4>
                      
                    </div><!-- end strip single course -->
                    </c:forEach>
                    
                  
            </div><!-- End col-md-8  -->
            
            <aside class="col-md-4">
            		<c:if test="${!enrolled}"><a href="course/enroll/${course.id}" class=" button_fullwidth-3">Zapisz się na kurs</a></c:if>
            		<c:if test="${enrolled}"><a href="course/evaluate/${course.id}" class=" button_fullwidth-3">Oceń kurs</a></c:if>
            		
            	<div class="box_style_1">
         			<h4>Lekcje <span class="pull-right">${fn:length(course.lessons)}</span></h4>
                    <h4>Ocena <span class="pull-right rating_2">
                    <c:forEach begin="1" end="5" var="star"><i title="${course.averageGrade}" class="${(star<=course.averageGrade) ? 'icon-star' : 'icon-star-empty' }"></i></c:forEach></span></h4>
                    <h4>Cena:<span class="pull-right">${course.price} PLN</span></h4><br>
                    <h4>Cena dla firm:<span class="pull-right">${course.corporatePrice} PLN</span></h4><br>
                	<h4>Autor</h4>
                	<h5 class="media-heading"><a href="user/public/${course.author.id}">${course.author.name}&nbsp;${course.author.surname}</a></h5>
                    <div class="media">
                        <div class="pull-right">
                            <img src="${course.author.photo}" class="img-circle" alt="">
                        </div>
                        <div class="media-body">
                            
                        </div>
                    </div>
                    
                    
           </div>
           </aside>
   
     	
     </div><!-- End row -->
     
     
  </div><!-- End container -->
  </section>
  
  <c:if test="${!enrolled}">
	  <section id="join">
	   <div class="container">
	 	<div class="row">
	    	<div class="col-md-8 col-md-offset-2 text-center">
	        <div class="row">
	        <div class="col-md-2 hidden-sm hidden-xs"><img src="img/arrow_hand_1.png" alt="Arrow" > </div>
	        <div class="col-md-8"><a href="course/enroll/${course.id}" class="button_big">Rozpocznij naukę</a></div>
	        </div>
	         </div>
	 </div>
	  </div>
	 </section>
  </c:if>

<jsp:include page="../bottom.jsp" />
