<?php

//Remoto
$servername = "remotehost.es";
$database = "dwesdatabase";
$username = "dwess1234";
$password = "test1234.";

// Creando la conexion
$conn = mysqli_connect($servername, $username, $password, $database); //en este orden o no funciona
mysqli_set_charset($conn, 'utf8');
//Probar conexion
if (!$conn) {
  die("Conexion fallida: " . mysqli_connect_error());
}

// include($_SERVER['DOCUMENT_ROOT'] . '/student034/wado/db/db_connection.php');
$sql = "SELECT ser.*, com.*
        FROM `034_servicio` AS ser
        INNER JOIN `034_comercio` AS com ON ser.id_comercio = com.id
        ORDER BY RAND() DESC LIMIT 10";

if ($resultado = mysqli_query($conn, $sql)) {
  $actividades = mysqli_fetch_all($resultado, MYSQLI_ASSOC);
  foreach ($actividades as $actividad) {
    $tags = json_decode($actividad["tags_json"], true);
?>
    <div class="servicio">
      <h1><?php printf($actividad["nombre"]); ?></h1>
      <hr>
      <p>Empresa: <?php printf($actividad["comercio_nombre"]) ?></p>
      <p>Puntuacion: <?php printf($actividad["puntuacion"]); ?></p>
      <p>Tags: <?php printf($tags["tags"][0] . " | " . $tags["tags"][1] . " | " . $tags["tags"][2]); ?></p>
    </div>
<?php
  }
} else {
  echo "mas tonto y no nace";
}
