<?php
include($_SERVER['DOCUMENT_ROOT'] . '/proyecto_wado/db/db_connection.php');
$sql = "SELECT ser.*, com.*
        FROM servicio AS ser
        INNER JOIN comercio AS com ON ser.id_comercio = com.id
        ORDER BY RAND() DESC LIMIT 10";

if ($resultado = mysqli_query($conn, $sql)) {
  $actividades = mysqli_fetch_all($resultado, MYSQLI_ASSOC);
  foreach ($actividades as $actividad) {
    $tags = json_decode($actividad["tags_json"], true);
?>
    <div class="servicio">
      
      <h1><?php printf($actividad["nombre"]); ?></h1>
      <hr>
      <p>Empresa: <?php printf($actividad["comercio_nombre"])?></p>
      <p>Puntuacion: <?php printf($actividad["puntuacion"]); ?></p>
      <p>Tags: <?php printf($tags["tags"][0] . " | " . $tags["tags"][1] . " | " . $tags["tags"][2]); ?></p>
    </div>
<?php
  }
} else {
  echo "mas tonto y no nace";
}
