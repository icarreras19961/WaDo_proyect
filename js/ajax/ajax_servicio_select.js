window.onload = showHint();
function showHint() {
  var conexion = new XMLHttpRequest();
  conexion.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("servicio").innerHTML = this.responseText;
    }
  };
  conexion.open(
    "GET",
    "/Proyecto_WaDo/DB/actividades/db_servicios_select.php",
    true
  );

  conexion.send();
}
