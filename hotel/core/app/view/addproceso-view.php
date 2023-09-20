<?php

$session_id= session_id(); 
ini_set('date.timezone','America/La_Paz'); 

	if(count($_POST)>0){

 

	$cajas = CajaData::getAllAbierto(); 
 	if(count($cajas)>0){ $id_caja=$cajas->id;
 	}else{$id_caja='NULL';}
 

 	
 	$cliente = new PersonaData();
      $cliente->tipo_documento = $_POST["tipo_documento"];
      $cliente->documento = $_POST["documento"];
      $cliente->nombre = $_POST["nombre"]; 
      $cliente->telefono = $_POST["telefono"];
      $cliente->giro = $_POST["giro"]; 

      $direccion="";
        if($_POST["direccion"]!=""){ $direccion=$_POST["direccion"];}
      $cliente->direccion = $direccion;

      $nacionalidad="NULL";
        if($_POST["nacionalidad"]!=""){ $nacionalidad=$_POST["nacionalidad"];}
      $cliente->nacionalidad = $nacionalidad;

      $estado_civil="NULL";
        if($_POST["estado_civil"]!=""){ $estado_civil=$_POST["estado_civil"];}
      $cliente->estado_civil = $estado_civil;

      $ocupacion="NULL";
        if($_POST["ocupacion"]!=""){ $ocupacion=$_POST["ocupacion"];}
      $cliente->ocupacion = $ocupacion;

      $medio_transporte="";
        if($_POST["medio_transporte"]!=""){ $medio_transporte=$_POST["medio_transporte"];}
      $cliente->medio_transporte = $medio_transporte;

      $destino="";
        if($_POST["destino"]!=""){ $destino=$_POST["destino"];}
      $cliente->destino = $destino;

      $motivo="NULL";
        if($_POST["motivo"]!=""){ $motivo=$_POST["motivo"];}
      $cliente->motivo = $motivo;


      $doc=$_POST["documento"];

      $s2 = PersonaData::buscarCliente($_POST["documento"]); 


      if($s2->documento==$_POST["documento"]){
        $s[1] = $s2->id;
      }else{  
        $s = $cliente->add();  
      }
      
      

	$habitacion = HabitacionData::getById($_POST["id_habitacion"]);
	$habitacion->estado = 2;
	$habitacion->updateEstado();
 

	$proceso = new ProcesoData();
	$proceso->id_habitacion = $_POST["id_habitacion"];
	$proceso->id_tarifa = $_POST["id_tarifa"];
	$proceso->id_cliente = $s[1];

	$proceso->precio = $_POST["precio"];
	
	
	$proceso->cant_noche = $_POST["cant_noche"];

  $pago=$_POST["pagado"];
  if($pago=="1"){
    $dineroDejado=(float)($_POST["cant_noche"])*(float)($_POST["precio"]);
  }else{
    $dineroDejado=0;

  }
  $proceso->total=$dineroDejado;
	$proceso->dinero_dejado = $dineroDejado;
	$proceso->fecha_entrada = date('Y-m-j H:i:s');
	$proceso->fecha_salida = $_POST["fecha_salida"].' '.$_POST['hora_salida'];
	$proceso->id_usuario = $_SESSION["user_id"];
	$proceso->cant_personas = $_POST["cantidad"];
	$proceso->id_caja = $id_caja;
	$proceso->cantidad = $_POST["cantidad"];
	$proceso->pagado = $_POST["pagado"];
	$f=$proceso->addIngreso();


	$cliente_proceso = new ClienteProcesoData();
      $cliente_proceso->id_cliente=$s[1];
      $cliente_proceso->sesion=$session_id;
      $cliente_proceso->id_proceso=$f[1]; 
      $cliente_proceso->add(); 

	




print "<script>window.location='index.php?view=recepcion';</script>";


}else{
	 	
	 	echo "<script>alert('NO SE AGREGÓ NINGÚN CLIENTE. FAVOR DE INGRESAR');</script>";
	 	print "<script>window.location='index.php?view=recepcion';</script>";

	 
}

?>