<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<jsp:include page="../top.jsp" />


<section id="main_content">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h3>Nazwa kursu:&nbsp;${course.name }</h3>
				<ul id="contact-info">
					<li style="font-size: 1.5em"><i class="icon-person"></i> ${course.author.name }&nbsp; ${course.author.surname }</li>


				</ul>
				<hr>
				<h3>Lista lekcji</h3>
				<c:forEach items="${course.lessons}" var="lesson">
				<p>${lesson.name }</p></c:forEach>
				
				<hr>

			</div>
			<form:form method="post" modelAttribute="form">
				<div class="col-md-8">
					<div class=" box_style_2">
						<span class="tape"></span>
						<div class="row">
							<div class="col-md-12">
								<h3>Ocena kursu</h3>
								<form:select path="value">
									<form:option value="1">1-Słabo</form:option>
									<form:option value="2">2-Przeciętnie</form:option>
									<form:option value="3">3-Dobrze</form:option>
									<form:option value="4">4-Bardzo dobrze</form:option>
									<form:option value="5">5-Wybitnie</form:option>
								</form:select>
							</div>
						</div>



						<br>
						<div id="message-contact"></div>
						<br>
						<p style="font-size: 1.5em">Wrażenia ogólne:</p>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<form:textarea rows="5" id="general_feelings" path="generalFeelings"
										class="form-control"
										placeholder="Opisz krótko swoje wrażenia z nauki"
										style="height: 200px;"></form:textarea>
								</div>
							</div>
						</div>
						<p style="font-size: 1.5em">Feedback dla autora</p>
						Mocne strony kursu:
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<form:textarea rows="5" id="strengths" path="strengths"
										class="form-control" placeholder="Co Ci się podobało"
										style="height: 100px;"></form:textarea>
								</div>
							</div>
						</div>
						Zalecane zmiany:
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<form:textarea rows="5" id="recommended_changes" path="recommendedChanges"
										class="form-control" placeholder="Co należy zmienić"
										style="height: 100px;"></form:textarea>
								</div>
							</div>
						</div>
						<p style="font-size: 1.5em">Rekomendacja:</p>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<form:textarea rows="5" id="recommendation" path="recommendation"
										class="form-control"
										placeholder="Napisz swoją rekomendację dla tego kursu"
										style="height: 150px;"></form:textarea>
								</div>
							</div>
						</div>

						<p align="right">
							<input type="submit" value="Zapisz" class=" button_medium"
								id="submit-contact" />
						</p>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</section>

<jsp:include page="../bottom.jsp" />

