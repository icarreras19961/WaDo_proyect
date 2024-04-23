<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>WaDo</title>
  <link rel="stylesheet" href="css/style.css" />
</head>
<!--
======================
PROYECTO WaDo Menorca
======================
@author Ivan Carreras Perez
@Version 0.1
-->

<body>
  <header></header>
  <!--Cuerpo-->
  <!--
    Aqui es donde ira el mapa y justo debajo las propuestas de actividades separadas en 2 
  - Las que propone la app 
  - Las que son empresas que proporcionan el servicio
-->
  <main>
    <div id="mapa">
      <h1>Mapa</h1>
      <!--La imagen sustituye al mapa de google maps es solo para hacerse a la idea de como quedara-->
      <img src="https://map.viamichelin.com/map/carte?map=viamichelin&z=10&lat=40.00127&lon=4.04087&width=550&height=382&format=png&version=latest&layer=background&debug_pattern=.*" alt="" />
    </div>
    <div id="filtros"></div>
    <h1>Propuestas</h1>
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
        Servicio
        <hr />
        <div id="servicio">

        </div>
      </div>
    </div>
  </main>
  <footer></footer>
  <!--
    Consulta ajax para cuando el cliente recargue la pagina que se carguen las actividades que ofrece la web
  -->
  <script src="/proyecto_wado/js/ajax/ajax_actividades_select.js"></script>
</body>

</html>