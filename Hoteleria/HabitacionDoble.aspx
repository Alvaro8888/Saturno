<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraCliente.master" AutoEventWireup="true" CodeFile="HabitacionDoble.aspx.cs" Inherits="HabitacionDoble" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- ====================================   Menu       ============================================== -->
<!-- ================================================================================================ -->
  <div class="rojo">
  <br>
  <br>
  <br>
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
            <h1 class="text-center">Habitaciones</h1>
            <br>
            <div class="container">
              <div class="col-lg-3"> 
               <a href="HabitacionSimple.aspx" type="submit" class="btn btn-warning btn-block">Habitación Simple </a>
              </div>
              <div class="col-lg-3"> 
              <a href="HabitacionDoble.aspx" type="submit" class="btn btn-warning btn-block">Habitación Doble </a>
              </div>
              <div class="col-lg-3"> 
              <a href="HabitacionTriple.aspx" type="submit" class="btn btn-warning btn-block">Habitación triple </a>
              </div>
              <div class="col-lg-3"> 
              <a href="HabitacionSuite.aspx" type="submit" class="btn btn-warning btn-block">Habitación Suite </a>
              </div>
            </div>
          </div>
        </div>
      </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  </div>
<!-- ====================================    slider    ============================================== -->
<!-- ================================================================================================ -->
  <div class="slider">    
  <div class="container"> 
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          
          <!-- <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
          </ol>-->

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img src="img/hDoble1.jpg" alt="New York" height="1200" >
                  <div class="carousel-caption">
                    <h3>UN POCO ACERCA DE NOSOTROS</h3>
                    <p>quipo profesional completamente equipado.
                        La calidad y la eficiencia nos caracterizan.</p>
                  </div>      
                </div>


                <div class="item">
                  <img src="img/hDoble2.jpg" alt="Chicago" height="1200"  >
                  <div class="carousel-caption">
                    <h3>Nuestro objetivo es destacar nuestra obra</h3>
                    <p>pero no sólo hacemos eso.</p>
                  </div>      
                </div>
              
                <div class="item">
                  <img src="img/hDoble3.jpg" alt="Chicago" height="1200"  >
                  <div class="carousel-caption">
                    <h3>Heche un vistazo a lo que podemos hacer</h3>
                    <p>Por usted y su proyecto.</p>
                  </div>      
                </div>
            
                <div class="item">
                    <img src="img/hDoble4.jpg" alt="Los Angeles" height="1200"  >
                    <div class="carousel-caption">
                      <h3>Construimos el futuro.</h3>
                      <p>Llámenos hoy mismo. </p>
                    </div>      
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>

            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>  
      </div>
  </div>
  </div>
<!-- ====================================  Habitación Simple ======================================== -->
<!-- ================================================================================================ -->
<div id=" " class="rojo ">
      <div class="container">
              <h1>Habitación Doble</h1>
            <div class="row colorT  bordeando1">
                <div class="col-lg-12 ">
                      <div class="container">
                          <div class="row">
                              <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12  ">
                                  <div class="form-group">
                                      <label></label>
                                      <h1><i class="fa fa-user" aria-hidden="true"></i>4 <i class="fa fa-bed" aria-hidden="true"></i>2</h1>
                                      <label></label>
                                  </div>
                              </div>
                              <div class="col-lg-offset-6 col-lg-3  col-xs-12">
                                <br>
                                <br>
                                    <button type="submit" class="btn btn-warning btn-block">Reservar ahora</button>
                                <label></label>

                              </div>
                          </div>
                      </div>
                </div>
            </div>


      </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container rojo">
  <h1>Información de la habitación </h1>
  <label>Capacidad de niños: 2 niños de 0 a 8 años no pagan compartiendo la habitación con sus padres.</label>
  <div class="row">
        <h3>Servicios</h3>
        <div class="col-lg-3  ">
            <div class="form-group">
              <ul>
                  <li>HD LCD TV</li>
                  <li>DVD</li>
                  <li>Tv Cable</li>
                  <li>Aire Acondicionado</li>
              </ul>
            </div>
        </div>
        <div class="col-lg-offset-6 col-lg-3 ">
          <div class="form-group">
              <ul>
                  <li>Cafetera</li>
                  <li>Frigobar</li>
                  <li>Caja fuerte</li>
              </ul>
            </div>

        </div>
    </div>
</div>


</asp:Content>

