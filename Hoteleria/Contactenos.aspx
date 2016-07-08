<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestraCliente.master" AutoEventWireup="true" CodeFile="Contactenos.aspx.cs" Inherits="Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<!-- =================================== ubicacion    =============================================== -->
<!-- ================================================================================================ -->
 <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d7596.473585681147!2d-63.1794551!3d-17.8275312!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2sbo!4v1467259648885" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
<!-- =================================== formulairo contactenos ===================================== -->
<!-- ================================================================================================ -->



<!-- Container (Contact Section) -->
<div id="contact" class="container">
<asp:Panel ID="Error" runat="server" Visible="false" CssClass="alert alert-danger" role="alert">
            </asp:Panel>
<br>
<br>
  
  <h3 class="text-center">Contactenos</h3>
<br>
  <div class="row">
    <div class="col-md-4">
      <p class="textoNegro">HotelNur!!!.</p>
      <p class="textoNegro" ><span class="glyphicon glyphicon-map-marker"></span>Av. El Trompillo 2do Anillo entre René Moreno y Monseñor Santisteban Nro. 4432 </p>
      <p class="textoNegro"><span class="glyphicon glyphicon-phone"></span>Teléfono: +591 71619342</p>
      <p class="textoNegro" ><span class="glyphicon glyphicon-envelope"></span>Email: hotelNur2016@mail.com</p>
    </div>
    <div class="col-md-8">
        <p class="text-center textoNegro"><em>Envianos un Mensaje!</em></p>

      <div class="row">

        <div class="col-sm-6 form-group">           
             <asp:TextBox ID="Nombre" runat="server" placeholder="Nombre"  CssClass="form-control" ></asp:TextBox>

            <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Nombre"
                    Display="Dynamic"
                    ForeColor="Blue"
                    ValidationGroup="Contactenos"
                    ErrorMessage="Debe ingresar su nombre">
                </asp:RequiredFieldValidator>
        </div>




        <div class="col-sm-6 form-group">
            <asp:TextBox ID="Correo" runat="server" CssClass="form-control" name="email" placeholder="Email" type="email"> </asp:TextBox>

            <asp:RequiredFieldValidator runat="server"
                    ControlToValidate="Correo"
                    Display="Dynamic"
                    ForeColor="Blue"
                    ValidationGroup="Contactenos"
                    ErrorMessage="Debe ingresar su Email ">
                </asp:RequiredFieldValidator>
        </div>
      </div>

        <asp:TextBox id="comments" TextMode="multiline" Columns="50" Rows="5" runat="server" name="comments" placeholder="Comentenos..." />



      <br>
      <div class="row">
        <div class="col-md-12 form-group">

            <asp:LinkButton ID="botonguardar" runat="server"
                CssClass="btn pull-right"
                ValidationGroup="Contactenos"
                OnClick="botonguardar_Click">
                Enviar
            </asp:LinkButton>

            <asp:Label ID="lbmensaje" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
        </div>
      </div>
    </div>
  </div>
</div>

    
<!-- Add Google Maps -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
    var myCenter = new google.maps.LatLng(-17.8274674, -63.1777141);

    function initialize() {
        var mapProp = {
            center: myCenter,
            zoom: 15,
            scrollwheel: false,
            draggable: false,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

        var marker = new google.maps.Marker({
            position: myCenter,
        });

        marker.setMap(map);
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>

<script type="text/javascript" src="bootstrap/js/jquery.js"></script><!-- fecha -->
<script type="text/javascript" src="js/jquery-1.11.3.min"></script><!-- fecha -->
</asp:Content>

