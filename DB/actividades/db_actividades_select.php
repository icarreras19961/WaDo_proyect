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

$sql = 'SELECT * FROM `034_actividad` ORDER BY RAND() DESC LIMIT 10';

if ($resultado = mysqli_query($conn, $sql)) {
  $actividades = mysqli_fetch_all($resultado, MYSQLI_ASSOC);
  foreach ($actividades as $actividad) {
    $tags = json_decode($actividad["tags_json"], true);
?>
    <div class="actividad">
      <h1><?php printf($actividad["nombre"]); ?></h1>
      <hr>
      <p>puntuacion: <?php printf($actividad["puntuacion"]); ?></p>
      <p>Tags: <?php printf($tags["tags"][0] . " | " . $tags["tags"][1]); ?></p>
    </div>
<?php
  }
} else {
  echo "mas tonto y no nace";
}
