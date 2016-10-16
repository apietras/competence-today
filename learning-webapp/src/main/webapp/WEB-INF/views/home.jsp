<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<jsp:include page="top.jsp" />

	<section id="sub-header">
  	<div class="container">
    	<div class="row">
        	<div class="col-md-6" id="subscribe">
            	<h1><spring:message code="home.header"/></h1>
                <h2 class="hidden-xs"><spring:message code="home.lead"/></h2>
            </div>
            <div class="col-md-6 ">
            <div style="
    padding-top: 285px;
">  
           <div id="message-contact-home"></div>
<a href="user/register" type="button" class="btn btn-danger btn-lg"><spring:message code="home.button.signin"/></a>
<a href="course/show" type="button" class="btn btn-danger btn-lg"><spring:message code="home.button.courses"/></a>				
					</div>
				</div>
                </div>
        
            </div>
  </section>
<jsp:include page="bottom.jsp" />	