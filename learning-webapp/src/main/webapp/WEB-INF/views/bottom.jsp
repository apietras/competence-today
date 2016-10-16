<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<footer style="background:#1cbbb4; padding-top:60px">
<!-- TODO na później 
<div class="container">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<h3>Zapisz się na nasz newsletter.</h3>
			<div id="message-newsletter">
			</div>
			<form method="post" action="assets/newsletter.php" name="newsletter" id="newsletter" class="form-inline">
				<input name="email_newsletter" id="email_newsletter" type="email" value="" placeholder="e-mail" class="form-control">
				<button id="submit-newsletter" class=" button_outline"> Zapisz się</button>
			</form>
		</div>
	</div>
</div>

<hr>
-->
<div class="container" id="nav-footer">
	<div class="row text-left">
		<div class="col-md-6 col-sm-6">
			<h4><spring:message code="bottom.choose"/></h4>
			<ul>
				<li><a href="course/show"><spring:message code="bottom.choose.courses"/></a></li>
				<sec:authorize ifAnyGranted="ROLE_ANONYMOUS">
				<li><a href="user/login"><spring:message code="bottom.choose.login"/></a></li>
				<li><a href="user/registration"><spring:message code="bottom.choose.register"/></a></li>
				</sec:authorize>
			</ul>
		</div><!-- End col-md-4 -->
		<div class="col-md-6 col-sm-6">
			<h4><spring:message code="bottom.about"/></h4>
			<ul>
				<li><a href="about"><spring:message code="bottom.about.aboutme"/></a></li>
				<li><a href="service/contact"><spring:message code="bottom.about.contact"/></a></li>
			</ul>
		</div><!-- End col-md-4 -->
		<div class="col-md-3 col-sm-3">
		<div class="col-md-3 col-sm-3">
			
	<!--  		<ul id="follow_us">
				<li><a href="#"><i class="icon-facebook"></i></a></li>
				<li><a href="#"><i class="icon-twitter"></i></a></li>
				<li><a href="#"><i class=" icon-google"></i></a></li>
			</ul>
			<ul>
				<li><strong class="phone">+0034 43244 44</strong><br><small>Mon - Fri / 9.00AM - 06.00PM</small></li>
				<li>Questions? <a href="#">questions@domain.com</a></li>
			</ul>
			-->
			</div>
		</div><!-- End col-md-4 -->
	</div><!-- End row -->
</div>
<div id="copy_right">© 2015</div>
</footer>

<div id="toTop"><spring:message code="bottom.totop"/></div>

<!-- JQUERY -->
<script src="js/jquery-1.10.2.min.js"></script>


<!-- OTHER JS --> 
<script src="js/superfish.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/retina.min.js"></script>
<script src="assets/validate.js"></script>
<script src="js/jquery.placeholder.js"></script>
<script src="js/functions.js"></script>
<script src="js/classie.js"></script>
<script src="js/uisearch.js"></script>
<script>new UISearch( document.getElementById( 'sb-search' ) );</script>


  </body>
</html>