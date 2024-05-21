<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>WaDo</title>
  <link rel="stylesheet" href="css/style.css" />
  <link rel="shortcut icon" href="/student034/wado/img/icono.png">
</head>
<!--
======================
PROYECTO WaDo Menorca
======================
@author Ivan Carreras Perez
@Version 0.1
-->

<body>
  <!--Header-->
  <!--
    Un header de toda la vida donde saldra para iniciar sesion y registrarse y se podra ver las actividads
-->
  <header>
    <div id="header_logo">
      <img class="logo" src="/student034/wado/img/icono.png" alt="">
    </div>

    <div id="header_botones">
      <button>Register</button><button>Sign in</button>
    </div>
  </header>
  <!--Cuerpo-->
  <!--
    Aqui es donde ira el mapa y justo debajo las propuestas de actividades separadas en 2 
  - Las que propone la app 
  - Las que son empresas que proporcionan el servicio
-->
  <main>
    <div id="mapa">
      <!--La imagen sustituye al mapa de google maps es solo para hacerse a la idea de como quedara-->
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d195753.21676113908!2d3.8944767421110393!3d39.9493518384139!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12be1f9d2cb820e9%3A0x529ac484178e77c9!2sMinorca!5e0!3m2!1sen!2ses!4v1715932033807!5m2!1sen!2ses" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <div id="filtros" class="whiteBoard-filtros">
      <?php
      include($_SERVER['DOCUMENT_ROOT'] . '/student034/wado/FORMS/form_filter_activities_select.php');
      ?>
    </div>
    <hr />
    <div id="propuestas">
      <div class="whiteBoard">
        <h1>
          Actividades
        </h1>
        <hr />
        <div id="actividad"></div>
      </div>
      <div class="whiteBoard">
        <h1>
          Servicios
        </h1>
        <hr />
        <div id="servicio">

        </div>
      </div>
    </div>
  </main>
  <footer>Un footer muy currado</footer>
  <!--
    Consulta ajax para cuando el cliente recargue la pagina que se carguen las actividades que ofrece la web
  -->
  <script src="/student034/wado/js/ajax/ajax_actividades_select.js"></script>
  <script src="/student034/wado/js/ajax/ajax_servicio_select.js"></script>

</body>

</html>