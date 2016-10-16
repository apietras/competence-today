<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<jsp:include page="../top.jsp" />


<section id="main_content">
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li class="active">Wyniki wyszukiwania '${phrase}'</li>
		</ol>
<h2>Wyniki wyszukiwania frazy "${phrase}"</h2>
		<div class="row">


			<div class="col-md-12">
				<div class="row">
				
				<c:forEach items="${ courses}" var="course">
					<div class="col-lg-4 col-md-6">
						<div class="col-item">
							
							<div class="photo">
								<a href="course/details/${course.id }"><img src="img/img_${(course.id%13)+1}.jpg" /></a>
							</div>
							<div class="info">
								<div class="row">
									<div class="course_info col-md-12 col-sm-12">
										<h4>${course.name }</h4>
										<p>${course.overview}</p>
										<div class="rating">
											<i class="icon-star"></i><i class="icon-star"></i><i
												class="icon-star"></i><i class="icon-star"></i><i
												class=" icon-star-empty"></i>
										</div>
										<div class="price pull-right">${course.price} PLN</div>
									</div>
								</div>
								<div class="separator clearfix">
									<p class="btn-add">
									</p>
									<p class="btn-details">
										<a href="course/details/${course.id }"><i class=" icon-list"></i>
											Więcej</a>
									</p>
								</div>
							</div>
						</div>
					</div>
</c:forEach>
					
				</div>
				<!-- End row -->
			</div>
			<!-- End col-lg-9-->



		</div>
		<!-- End row -->

	</div>
	<!-- End container -->
</section>
<!-- End main_content -->
<jsp:include page="../bottom.jsp" />
