<jsp:include page="../top.jsp" />


<div id="toTop">Back to top</div>


 <section id="main_content" >
<div class="container">

<%@ page contentType="text/html; charset=UTF-8" %>
<div class="row">

            
<jsp:include page="menu.jsp" />

    
	<div class="col-md-8">
		<div class=" box_style_2">
			
        
        
        <div class="row">
        
            <h3>Zarządzanie użytkownikami</h3>
            <p>W tym miejscu możesz dodawać, edytować i usuwać użytkowników, a także zapisywać ich na wybrany kurs.</p>
        
        
       
                <div class="panel panel-info filterable add_bottom_45">
                    <div class="panel-heading">
                        <h3 class="panel-title">Twoi użytkownicy</h3>
                        <div class="pull-right">
                            <button class="btn-filter"><span class="icon-th-list"></span> Filtruj</button>
                        </div>
                    </div>
                    <table class="table table-responsive table-striped">
                        <thead>
                            <tr class="filters">
                                <th style=" width:25px"><input type="text" class="form-control" placeholder="" disabled ></th>
 </th>
                                <th style=" width:35px"><input type="text" class="form-control" placeholder="ID" disabled ></th>
                                <th><input type="text" class="form-control" placeholder="NAZWISKO" disabled></th>
                                <th><input type="text" class="form-control" placeholder="IMIĘ" disabled ></th>
                                <th><input type="text" class="form-control" placeholder="DODATKOWE INFO" disabled ></th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox"  value="" />
 </td>
                                <td>1</td>
                                <td>Intro</td>
                                <td>20/04/2014</td>
                                <td>Marc Twain</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"  value="" />
 </td>
                                <td>2</td>
                                <td>Principles</td>
                                <td>20/05/2014</td>
                                <td>Jhon Doe</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"  value="" />
 </td>
                                <td>3</td>
                                <td>Automorum</td>
                                <td>15/05/2014</td>
                                <td>Davic Guetta</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"  value="" />
 </td>
                                <td>4</td>
                                <td>Intro</td>
                                <td>20/04/2014</td>
                                <td>Marc Twain</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"  value="" />
 </td>
                                <td>5</td>
                                <td>Principles</td>
                                <td>20/05/2014</td>
                                <td>Jhon Doe</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox"  value="" />
 </td>
                                <td>6</td>
                                <td>Automorum</td>
                                <td>15/05/2014</td>
                                <td>Davic Guetta</td>
                            </tr>
                        </tbody>
                    </table>
        

        <div class="row">
        	<div class="col-md-12 text-center">
            	<ul class="pagination">
                  <li><a href="#">&laquo;</a></li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">&raquo;</a></li>
                </ul>
            </div>
        </div>
            </div>
    <p>Wybierz akcje dla wybranych użytkowników.</p>
    <p align="right">
  <button type="button" class="btn btn-info">Zapisz na kurs</button>
<button type="button" class="btn btn-warning">Wyświetl</button>            
  <button type="button" class="btn btn-success">Edytuj</button>
  <button type="button" class="btn btn-danger">Usuń</button>
        </p>

                    </div><!-- End filterable -->
                    
                    
 
        </div><!-- End col-lg-9-->                        
        </div><!-- End row -->
        
       
            	
        </div><!-- End container -->
    </section><!-- End main_content -->
<jsp:include page="../bottom.jsp" />