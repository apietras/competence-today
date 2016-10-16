<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="top.jsp" />


<section id="">
	<div class="container">

		<div class="row">
			<div class="col-md-7">
				<br />
				<h1>
					<span style="font-size:4em"><spring:message code="404.404"/></span></h1>
				<br />
				<h3>
					<spring:message code="404.msg" />
					</h3>
				
				<br />
				</div>
				
			<div class="col-md-5" style="padding-top:40px">
			
						<img
							src="img/microscope.png"
							>
					

				
			</div>
		</div>
	</div>
</section>
<jsp:include page="bottom.jsp" />
