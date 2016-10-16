<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]-->

<head>
  	<meta charset="utf-8">
    <title><spring:message code="top.title"/></title>
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=no">
    <base href="<c:url value="/" />" />
    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
    
    <!-- CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/superfish.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="fontello/css/fontello.css" rel="stylesheet">
     <!-- color scheme css -->
    <link href="css/color_scheme.css" rel="stylesheet">
    
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <%@ page contentType="text/html; charset=UTF-8" %>
     <script src="ckeditor/ckeditor.js"></script>
    
  </head>
  
  <body>
  <header>
  	<div class="container">
	<div class="row">
		<div class="col-md-3 col-sm-3 col-xs-3" style="padding-top: 5px">
			<a href="home" style="font-size:2em; padding-top:15px"><strong>Competence.today</strong></a>
		</div>
		<div class="col-md-9 col-sm-9 col-xs-9"> 
		<sec:authorize ifAnyGranted="ROLE_ANONYMOUS">
			<div class="pull-right"><a href="user/login" class="button_top" id="login_top"><spring:message code="top.button.login"/></a> <a href="user/register" class="button_top" id="apply"><spring:message code="top.button.register"/></a></div>
			</sec:authorize>			
<sec:authorize ifNotGranted="ROLE_ANONYMOUS">
        <div style="float:right"><spring:message code="top.button.user.msg"/> <sec:authentication property="principal.username" /> ! <form style="display:inline" action="j_spring_security_logout" method="post"><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/><button class="btn btn-xs btn-danger"><spring:message code="top.button.user.logout"/></button></form></div>
    </sec:authorize>			
            
		</div>
	</div>
</div>
</header><!-- End header -->

<nav>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div id="mobnav-btn"></div>
			<ul class="sf-menu">
				<li class="normal_drop_down">
				<a href="home"><spring:message code="top.menu.home"/></a></li>
				<div class="mobnav-subarrow"></div>
				
				<li class="normal_drop_down">
				<a href="course/show"><spring:message code="top.menu.courses"/></a></li>
				<div class="mobnav-subarrow"></div>
				<sec:authorize ifAnyGranted="ROLE_USER">
				<li class="normal_drop_down">
				<a href="user/profile"><spring:message code="top.menu.user"/></a></li>
				</sec:authorize>
				<li class="normal_drop_down">
				<a href="about"><spring:message code="top.menu.about"/></a></li>
				<div class="mobnav-subarrow"></div>
				<li><a href="service/contact"><spring:message code="top.menu.contact"/></a></li>
               
               <li class="normal_drop_down">
               <a href="${requestScope['javax.servlet.forward.request_uri']}?language=pl_PL"><img src="http://flags.fmcdn.net/data/flags/mini/pl.png" width="80%" /></a></li>
               <li class="normal_drop_down">
               <a href="${requestScope['javax.servlet.forward.request_uri']}?language=en_GB"><img src="http://flags.fmcdn.net/data/flags/mini/gb.png" width="80%" /></a></li>
			</ul>
            <div class="col-md-3 pull-right hidden-sm hidden-xs">
                    <div id="sb-search" class="sb-search">
						<form method="post" action="service/search">
						<c:set var="search"><spring:message code="top.search"/></c:set>
							<input class="sb-search-input" placeholder="${search }" type="text" value="" name="phrase" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"></span>
							<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
						</form>
					</div>
              </div><!-- End search -->
              
		</div>
	</div><!-- End row -->
</div><!-- End container -->
</nav>
