<?php
include($_SERVER['DOCUMENT_ROOT'] . '/proyecto_wado/db/db_connection.php');
$sql = "SELECT * FROM actividad ORDER BY puntuacion DESC LIMIT 5";

if ($resultado = mysqli_query($conn, $sql)) {
  $actividades = mysqli_fetch_all($resultado, MYSQLI_ASSOC);
  foreach ($actividades as $actividad) {
    $tags = json_decode($actividad["tags_json"], true);
?>
    <div class="actividad">
      <h1><?php printf($actividad["nombre"]); ?></h1>
      <hr>
      <p>puntuacion: <?php printf($actividad["puntuacion"]); ?></p>
      <p>Tags: <?php  printf($tags["tags"][0] . " | " . $tags["tags"][1] . " | " . $tags["tags"][2]); ?></p>
    </div>
<?php
  }
} else {
  echo "mas tonto y no nace";
}
