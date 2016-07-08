<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraCliente.master" AutoEventWireup="true" CodeFile="Gastronomia.aspx.cs" Inherits="Gastronomia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- ====================================    slider    ============================================== -->
<!-- ================================================================================================ -->
  <div class="slider">    
  <div class=""> 
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
                  <img src="img/sAuditorio1.jpg" alt="New York" width="1920" height="200" >
                  <div class="carousel-caption">
                    <h3>UN POCO ACERCA DE NOSOTROS</h3>
                    <p>quipo profesional completamente equipado.
                        La calidad y la eficiencia nos caracterizan.</p>
                  </div>      
                </div>


                <div class="item">
                  <img src="img/sAuditorio2.jpg" alt="New York" width="1920" height="200" >
                  <div class="carousel-caption">
                    <h3>Nuestro objetivo es destacar nuestra obra</h3>
                    <p>pero no sólo hacemos eso.</p>
                  </div>      
                </div>
              
                <div class="item">
                  <img src="img/sAuditorio3.jpg" alt="New York" width="1920" height="200" >
                  <div class="carousel-caption">
                    <h3>Heche un vistazo a lo que podemos hacer</h3>
                    <p>Por usted y su proyecto.</p>
                  </div>      
                </div>
            
                <div class="item">
                    <img src="img/sAuditorio4.jpg" alt="New York" width="1920" height="200" >
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
<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">

        <h1>Gastronomía</h1>
        <label>JARDIN DE ASIA RESTAURANT & LOUNGE.</label>
        <br>
        <p class="textoNegro">Quieres comer en uno de los mejores restaurants de Santa Cruz? En Los Tajibos encontrarás la mejor gastronomía.</p>
        <p class="textoNegro">Con tres distintos restaurantes y dos bares, te ofrecemos exquisitas opciones culinarias y bebidas para acompañar cada sabor y ocasión.</p>
        <a href="#">Para más información clic aquí</a>
      </div>
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <br>
        <br>        
        <img src="img/sAuditorio2.jpg" alt="New York" width="250" height="200" >
    </div>
  </div>
</div>


<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
        <h3>PIEGARI RESTAURANT</h3>
        <br>
        <p class="textoNegro">Piegari es reconocido a nivel mundial por sus exquisitos platos y cálida atención,con más de 20 años de experiencia y trayectoria en cocina italiana y carnes argentinas.</p><br>
        <p class="textoNegro">Es considerado hoy en día un icono de la gastronomía argentina. Llega desde Buenos Aires a Santa Cruz, de la mano de Los Tajibos Hotel & Convention Center.</p><br>
        <p class="textoNegro">Bajo un mismo techo opera dos marcas: Ristorante y Vitello e Dolce. Cada área cuenta con su menú propio.</p><br>
        <p class="textoNegro">Piegar Ristorante se especializa en cocina italiana ofreciendo una amplia variedad de pastas artesanales, risottos, carnes, pescados y mariscos elaborados con materias primas de primera calidad. Al ingreso de Piegari Ristorante, esta ubicada La Mesa della Mamma. Destacada por su imponencia dentro del salón, ofrece la opción de un servicio personalizado que incluye garzón privado para 10 personas, antipastos de entrada, y la opción de espumantes o vinos.</p><br>
        <p class="textoNegro">Vitello e Dolce es el primer restaurant de Bolivia en ofrecer cortes de carne de ganado boliviano y argentino de calidad superior, todos madurados para conseguir lo mejor en sabor y terneza.</p><br>
        <p class="textoNegro">La Pergola es un ambiente de terraza al aire libre con bar, música al vivo y especialidad en antipastos, piqueos y pizzas elaboradas con ingredientes gourmet. Disfrutá de nuestra bebida insigna, Sangría Rosa, "fatto in casa".</p>
        <br>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <br>
        <br>
          <img src="img/restaurante1.jpg" alt="New York" width="250" height="150" >
    </div>
  </div>
</div>


<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
        <h3>LA TERRAZA RESTAURANT</h3>
        <br>
        <p class="textoNegro">Este pintoresco restaurante domina nuestra estupenda piscina y es un punto de reunión ideal para quienes se encuentran de visita o en viaje de negocios. Los huéspedes pueden disfrutar cada mañana un desayuno buffet americano sin costo adicional, y para el almuerzo servimos buffet ejecutivo y cenas temáticas diariamente. La Terraza brinda servicio a la habitación las 24 horas del día.</p>
        <br><br><p class="textoNegro">Horarios: 24 horas</p>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <br>
        <br>
        <img src="img/restaurante2.jpg" alt="New York" width="250" height="150" >
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
        <h3>LA TERRAZA RESTAURANT</h3>
        <br>
        <p class="textoNegro">Venga a Jardín de Asia para una noche inolvidable de cocina internacional galardonada. Talentosos chefs teppanyaki lo entretendrán con malabares de utensilios y ejecutando emocionantes espectáculos de fuego, mientras preparan deliciosos platos amazónicos y andinos influenciados por la cocina asiática. Jardín de Asia también sirve sushi y platos de fusión única. Los huéspedes pueden sentarse en nuestro comedor con luz tenue o en nuestra terraza que domina la hermosa laguna y jardín.</p><br>
        <p class="textoNegro">Reserve su mesa hoy, y descubra por qué Jardín de Asia ganó el 2013 Trip Advisor Certificate of Excellence de Trip Advisor</p><br>
        <br><br><p class="textoNegro">Horarios:Lunes a Domingo, de 12:30 pm a 3:00 pm; de 7:30 pm a 1:00 am
        Envío a domicilio y Servicio a la habitación disponible de 07:30 pm a 1:00 am</p>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <br>
        <br>        
        <img src="img/restaurante3.jpg" alt="New York" width="250" height="150" >
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
        <h3>LA BARANDA</h3>
        <br>
        <p class="textoNegro">Nuestra afamada Parrillada Campestre se sirve los Domingos en La Baranda, a orillas de la paradisíaca piscina con reposeras y hamacas.</p>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <br>
        <br>
        <img src="img/restaurante4.jpg" alt="New York" width="250" height="150" >
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
        <h3>LOBBY BAR DON CARLOS</h3>
        <br>
        <p class="textoNegro">Visite nuestro elegante bar en el lobby y disfrute de una variedad de cócteles, especialidades de café, pastelería y picadas.</p>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <br>
        <br>
        <img src="img/restaurante5.jpg" alt="New York" width="250" height="150" >
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
        <h3>PISCINA CON WET BAR</h3>
        <br>
        <p class="textoNegro">No existe nada más refrescante que una bebida bien fría en la piscina.</p>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <br>
        <br>
        <img src="img/restaurante6.jpg" alt="New York" width="250" height="150" >
    </div>
  </div>
</div>


</asp:Content>

