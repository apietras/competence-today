<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<div class="col-md-4">
           
      <hr>
      <a href="user/edit/${user.id }" class="button_medium_outline btn-block">Edytuj profil</a>
      <c:if test="${user.author }">
      <a href="user/bio/${user.id }" class="button_medium_outline btn-block">Edytuj biografię</a>
       <a href="user/courses/${user.id }" class="button_medium_outline btn-block">Edytuj swoje kursy</a></c:if>
        <a href="user/change/password/${user.id }" class="button_medium_outline btn-block">Zmień hasło</a>
        <a href="user/payment/${user.id }" class="button_medium_outline btn-block">Płatności</a>
        <!--  
        <a href="user/certificates/${user.id }" class="button_medium_outline btn-block">Certyfikaty</a>
        -->
	</div>