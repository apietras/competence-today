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
				<div class="col-md-12">
					<h3>Dodaj użytkownika</h3>
				</div>
			</div>
			<div id="message-apply"></div>
			<form method="post" action="" id="contactform_apply">
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<input type="text" class="form-control style_2" id="name_apply" name="name_apply" placeholder="ImiÄ">
                            <span class="input-icon"><i class="icon-user"></i></span>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<input type="text" class="form-control style_2" id="lastname_apply" name="lastname_apply" placeholder="Nazwisko">
                            <span class="input-icon"><i class="icon-user"></i></span>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<input type="email" id="email_apply" name="email_apply" class="form-control style_2" placeholder="Email">
                            <span class="input-icon"><i class="icon-email"></i></span>
						</div>
					</div>
					<div class="col-md-6 col-sm-6">
						<div class="form-group">
							<input type="text" id="company_apply" name="company_apply" class="form-control style_2" placeholder="Firma">
                            <span class="input-icon"><i class="icon-briefcase"></i></span>
						</div>
				
              
               
						<div class="form-group pull-right">
							<input type="submit" value="Zapisz" class=" button_medium" id="submit-apply"/> <div class="form-group pull-right">
							&nbsp;&nbsp;&nbsp;<a href="" class=" button_medium_outline" style="color: #c0c0c0;border: 2px solid #c0c0c0;
" id="delete_account"/>Usuń konto</a>
					</div>
					</div>
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

