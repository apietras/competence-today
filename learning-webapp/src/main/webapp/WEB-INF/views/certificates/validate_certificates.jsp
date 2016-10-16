<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../top.jsp" />
<section>
<div class="container">
<div class="row">
<br/>
<br/>
<div class="col-md-12">
		<div class=" box_style_2">
			<span class="tape"></span>
			<div class="row">
				<div class="col-md-12">
					<h3>Potwierdź certyfikat</h3>
                   Wprowadź numer i kod certyfikatu, aby sprawdzić jego autentyczność. <br>

			</div>
			<div id="message-apply"></div>
			<form method="post" action="" id="certificate_confirm">
				<div class="row">
                    					<div class="col-md-6">

				
						<div class="form-group">
							<input type="text" id="company_apply" name="company_apply" class="form-control style_2" placeholder="numer certyfikatu">
                            <span class="input-icon"><i class="icon-certificate"></i></span>
						</div>
                                            </div>
                    
				<div class="col-md-6">

				
						<div class="form-group">
							<input type="text" id="company_apply" name="company_apply" class="form-control style_2" placeholder="kod">
                            <span class="input-icon"><i class="icon-lock"></i></span>
						
                                            </div>
              
               
						<div class="form-group pull-right">
							<input type="submit" value="Sprawdź ważność" class=" button_medium" id="submit-apply"/>
					</div><br /><br/>
<br/>
				</div>
                </div>
			</form>
		</div>
	</div>
</div>
</div>
</section>


<div id="toTop">Back to top</div>

<jsp:include page="../bottom.jsp" />
