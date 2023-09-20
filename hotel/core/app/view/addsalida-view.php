<?php


if(count($_POST)>0){

    $id_ope=$_POST['id_operacion'];
	$cajas = CajaData::getAllAbierto(); 
 	if(count($cajas)>0){ 
        $id_caja=$cajas->id;
 	}else{
        $id_caja='NULL';
    }

	$proceso = ProcesoData::getById($_POST["id_operacion"]);

    $totalPagoInicial=$_POST['resultado'];
    $totalPagoTarde=$_POST['resultado5'];
    $estadoPagoInicial=$_POST['estadoPago'];

    $totalEstadia=$totalPagoInicial;
    if($estadoPagoInicial==0){
        $totalEstadia=$totalPagoInicial+$totalPagoTarde;
    }else{
       $totalEstadia=$totalPagoInicial+$totalPagoTarde; 
    }

    $cajaEntrada=$proceso->id_caja;
    $cajaSalida=$id_caja;

    if($cajaEntrada==$cajaSalida){
        $totalEstadia=$totalPagoInicial+$totalPagoTarde;
    }else{
         if($estadoPagoInicial==0){
            $totalEstadia=$totalPagoInicial+$totalPagoTarde;
         }else{
            $totalEstadia=$totalPagoTarde;
         }
       
    }

    $proceso->carga_salida_tarde=$totalPagoTarde;
	$proceso->total = $totalEstadia;
    $proceso->id_tipo_pago = $_POST['id_tipo_pago'];
    $proceso->id_caja=$id_caja;
    $proceso->dias_estadia= $_POST['dias_estadia'];
    $proceso->fecha_salida= $_POST['fecha_salida'];
	$proceso->updateSalida();  

	$habitacion = HabitacionData::getById($_POST["id_habitacion"]);
	$habitacion->estado = 3;
	$habitacion->updateEstado(); 


    $productos = ProcesoVentaData::getByAll($_POST['id_operacion']);
    if(count($productos)>0){           	
    foreach($productos as $producto):
    if($producto->fecha_creada!=NULL){ 

    }else{ 
    $venta = ProcesoVentaData::getById($producto->id);
    $venta->id_caja=$id_caja;
    $venta->fecha_creada = $_POST['fecha_salida'];
	$venta->updateFecha();
    $venta->updateCaja();
    };                   
    endforeach;  
            

    }else{ 
           

    };


if(isset($_POST['boleta'])) 
{ 
  print "<script>window.location='index.php?view=imprimir_boleta&id=$id_ope';</script>";
} 
else if(isset($_POST['factura'])) 
{ 
  print "<script>window.location='index.php?view=imprimir_factura&id=$id_ope';</script>";
}else if(isset($_POST['ticket'])) 
{ 
  print "<script>window.location='index.php?view=imprimir_ticket&id=$id_ope';</script>";
}



}

?>