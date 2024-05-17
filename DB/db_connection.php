<?php

//Localhost
$servername = "localhost";
$database = "wado_entregar";
$username = "root";
$password = "";

// Creando la conexion
$conn = mysqli_connect($servername, $username, $password, $database); //en este orden o no funciona

//Probar conexion
if (!$conn) {
  die("Conexion fallida: " . mysqli_connect_error());
}
