<?php

if(count($_POST)>0){

	$habitacion = HabitacionData::getById($_POST["id_habitacion"]);
	$habitacion->nombre = $_POST["nombre"];
	$habitacion->descripcion = $_POST["descripcion"];
	$habitacion->id_categoria = $_POST["id_categoria"];
	$habitacion->precio = $_POST["precio"];
	$habitacion->estado = 1;
	$habitacion->updateRoom();

	$tarifa = TarifaData::getById($_POST["id_tarifa"]);
	$tarifa->nombre = $_POST["nombre"];
	$tarifa->update();

print "<script>window.location='index.php?view=habitacion';</script>";


}

?>