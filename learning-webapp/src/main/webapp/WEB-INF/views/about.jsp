<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="top.jsp" />

<section id="sub-header">
	<div class="container">
		<div class="row">
			<div class="col-md-10 col-md-offset-1 text-center">
				<h1>
					<spring:message code="about.header" />
				</h1>
				<p class="lead boxed ">
					<spring:message code="about.lead" />
				</p>
				<p class="lead"></p>
			</div>
		</div>
		<!-- End row -->
	</div>
	<!-- End container -->
	<div class="divider_top"></div>
</section>
<!-- End sub-header -->

<style>
.timeline {
    white-space:nowrap;
    overflow-x: scroll;
    padding:30px 0 10px 0;
    position:relative;
}

.entry {
    display:inline-block;
    vertical-align:top;
    background:#008278;
    color:#fff;
    padding:10px;
    font-size:12px;
    text-align:center;
    position:relative;
    border-top:4px solid #1cbbb4;
    border-radius:3px;
    min-width:200px;
    max-width:500px;
}

.entry img {
    display:block;
    max-width:100%;
    height:auto;
    margin-bottom:10px;
}

.entry:after {
    content:'';
    display:block;
    background:#eee;
    width:7px;
    height:7px;
    border-radius:6px;
    border:3px solid #1cbbb4;
    position:absolute;
    left:50%;
    top:-27px;
    margin-left:-3px;
}

.entry:before {
    content:'';
    display:block;
    background:#1cbbb4;
    width:5px;
    height:20px;
    position:absolute;
    left:50%;
    top:-20px;
    margin-left:-2px;
}

.entry h1 {
    color:#fff;
    font-size:18px;
    font-family:Open-Sans,Helvetica, Arial;
    font-weight:bold;
    margin-bottom:10px;
}

.entry h2 {
    letter-spacing:.2em;
    margin-bottom:10px;
    font-size:14px;
}

.bar {
    height:4px;
    background:#eee;
    width:100%;
    position:relative;
    top:13px;
    left:0;
}
</style>

<section id="">
	<div class="container">

		<div class="row">
			<div class="col-md-7">
				<br />
				<h3>
					<spring:message code="about.application.title" />
				</h3>
				<br />
				<p>
					<spring:message code="about.application.description" />
				</p>
				<br />
				<p>
					<spring:message code="about.application.additionaldescription" />
				</p>
			</div>
			<div class="col-md-5">
				<div class=" box_style_3">
					<p>
						<img
							src="http://kobietydokodu.pl/wp-content/uploads/2015/01/Ania.jpg"
							alt="Ania" class="img-circle styled">
					</p>
					<h4 class="p-title">
						Ania Pietras <br /> <small>Junior Java Developer</small>
					</h4>
					<p>
						<spring:message code="about.work" />
					</p>
					<ul class="social_team">
						<li><a href="http://pl.linkedin.com/in/aniapietras"><i
								class="icon-linkedin"></i></a></li>
						<li><a href="http://www.kobietydokodu.pl"><i
								class="icon-home"></i></a></li>
						<li><a href="mailto:annampietras@gmail.com"><i
								class=" icon-mail"></i></a></li>
					</ul>
					<hr>

				</div>
			</div>
		</div>
		
	</div>
	<div class="row">
			<div class="col-md-12" style="text-align:center">
				<div class="bar"></div>
				<div class="timeline">
				    <div class="entry">
				        <h1><spring:message code="about.timeline.time1" /></h1>
				        <spring:message code="about.timeline.time1.msg" />
				    </div>
				    <div class="entry">
				        <h1><spring:message code="about.timeline.time2" /></h1>
				        <spring:message code="about.timeline.time2.msg" />
				    </div>
				    <div class="entry">
				        <h1><spring:message code="about.timeline.time3" /></h1>
				       <spring:message code="about.timeline.time3.msg" />
				    </div>
				    <div class="entry">
				        <h1><spring:message code="about.timeline.time4" /></h1>
				        <spring:message code="about.timeline.time4.msg" />
				    </div>
				</div>
			</div>
		</div>
</section>
<jsp:include page="bottom.jsp" />
