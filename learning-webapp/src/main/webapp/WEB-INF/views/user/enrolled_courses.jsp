<%@ page contentType="text/html; charset=UTF-8" %>
<jsp:include page="../top.jsp" />

<section id="main_content" >
    	<div class="container">
        
        <ol class="breadcrumb">
          <li><a href="index.html">Strona Głowna</a></li>
          <li class="active">Twoje kursy</li>
        </ol>
        
        <div class="row">
        
        
       
            <h3>Twoje kursy</h3>
            <p> Wybierz kurs z listy, stwórz nowy, badź zapisz się na kurs.
                <p align="right">
 <a href="" class="btn btn-info">Stwórz nowy kurs</a>
                                <a href="" class="btn btn-primary ">Zapisz się na kurs</a></p>
                <div class="panel panel-info filterable add_bottom_45">
                    <div class="panel-heading">
                        <h3 class="panel-title">Kursy stworzone przez Ciebie</h3>
                        <div class="pull-right">
                            <button class="btn-filter"><span class="icon-th-list"></span> Filtruj</button>
                        </div>
                    </div>
                    <table class="table table-responsive table-striped">
                        <thead>
                            <tr class="filters">
                                
                                <th style=" width:35px"><input type="text" class="form-control" placeholder="ID" disabled ></th>
                                <th><input type="text" class="form-control" placeholder="NAZWA" disabled></th>
                                <th><input type="text" class="form-control" placeholder="OSTATNIA EDYCJA" disabled ></th>
                                
                                 <th style=" width:35px"><input type="text" class="form-control" placeholder="" disabled ></th>
                         <th style=" width:35px"><input type="text" class="form-control" placeholder="" disabled ></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                
                                <td>1</td>
                                <td><a href="">KURS1</a></td>
                                <td>20/04/2014</td>
                               
                                <td><a href="" class="btn btn-success btn-xs">Edytuj</a></td><td>
                                <a href="" class="btn btn-danger btn-xs">Usuń</a></td>
                            </tr>
                             <tr>
                                

                                <td>1</td>
                                <td><a href="">KURS1</a></td>
                                <td>20/04/2014</td>
                               
                                <td><a href="" class="btn btn-success btn-xs">Edytuj</a></td><td>
                                <a href="" class="btn btn-danger btn-xs">Usuń</a></td>
                            </tr> 
                            <tr>
                              
                                <td>1</td>
                                <td><a href="">KURS1</a></td>
                                <td>20/04/2014</td>
                               
                                <td><a href="" class="btn btn-success btn-xs">Edytuj</a></td><td>
                                <a href="" class="btn btn-danger btn-xs">Usuń</a></td>
                            </tr> 
                            <tr>
                                
                                <td>1</td>
                                <td><a href="">KURS1</a></td>
                                <td>20/04/2014</td>
                               
                                <td><a href="" class="btn btn-success btn-xs">Edytuj</a></td><td>
                                <a href="" class="btn btn-danger btn-xs">Usuń</a></td>
                            </tr>
                        </tbody>
                    </table>
        </div>
                <div class="panel panel-info filterable add_bottom_45">
                    <div class="panel-heading">
                        <h3 class="panel-title">Kursy, na które uczęszczasz</h3>
                        <div class="pull-right">
                            <button class="btn-filter"><span class="icon-th-list"></span> Filtruj</button>
                        </div>
                    </div>
                 
                    <table class="table table-responsive table-striped">
                        <thead>
                            <tr class="filters">
                               
                                <th style=" width:35px"><input type="text" class="form-control" placeholder="ID" disabled ></th>
                                <th><input type="text" class="form-control" placeholder="NAZWA" disabled></th>
                                <th><input type="text" class="form-control" placeholder="OSTATNIA WIZYTA" disabled ></th>
                                <th><input type="text" class="form-control" placeholder="POSTĘP" disabled ></th>
                                 
                         <th><input type="text" class="form-control" placeholder="" disabled ></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                
                                <td>1</td>
                                <td><a href="">KURS1</a></td>
                                <td>20/04/2014</td>
                                <td>90%</td>
                       
                                <td><a href="" class="btn btn-success btn-xs">Przejdź do kursu</a></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td><a href="">KURS1</a></td>
                                <td>20/04/2014</td>
                                <td>90%</td>
                        
                                <td><a href="" class="btn btn-success btn-xs">Przejdź do kursu</a></td> </tr> 
                            <tr>
                                <td>3</td>
                                <td><a href="">KURS1</a></td>
                                <td>20/04/2014</td>
                                <td>90%</td>
                        
                                <td><a href="" class="btn btn-success btn-xs">Przejdź do kursu</a></td> </tr>
                            <tr>
                                <td>4</td>
                                <td><a href="">KURS1</a></td>
                                <td>20/04/2014</td>
                                <td>90%</td>
                        
                                <td><a href="" class="btn btn-success btn-xs">Przejdź do kursu</a></td>
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
    

                    </div><!-- End filterable -->
                    
                    
 
        </div><!-- End col-lg-9-->                        
        </div><!-- End row -->
        
       
            	
        </div><!-- End container -->
    </section><!-- End main_content -->

<jsp:include page="../bottom.jsp" />

