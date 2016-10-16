<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../top.jsp" />

<section>
<div class="container">
<div class="row">
<jsp:include page="menu.jsp" />
    
<div class="col-md-8">
<br/>
<br/>
		<div class=" box_style_2">
			<span class="tape"></span>
			<div class="row">
				<div class="col-md-8">
					<h4>Certyfikaty</h4>
                </div>
                <table class="table table-striped">
                        <thead>
                          <tr>
                            <th>Certyfikat</th>
                            <th>Pobierz</th>
                          </tr>
                        </thead>
                        <tbody><c:forEach items=${user.certificates } var="certificate">
                          <tr>
                            <td>Certyfikat za kurs ${certificate.course.name} </td>
                            <td><a href= ""><i class="icon-download"></i></a></td>
                          </tr></c:forEach>
                          
                        </tbody>
                      </table>
                
           
                          

	</div>
</div>
</div>
</div>
</div>
</section>

<div id="toTop">Back to top</div>

<jsp:include page="../bottom.jsp" />

