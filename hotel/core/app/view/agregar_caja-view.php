<?php

if(count($_POST)>0){
	$caja = new CajaData();
	$caja->fecha_apertura = $_POST["fecha_apertura"];
	$caja->monto_apertura = $_POST["monto_apertura"];
	$caja->id_usuario = $_SESSION["user_id"];
	$caja->add();
 ?>

    <script>
        window.location.href="index.php?view=recepcion";
    </script>
<?php
}

?>