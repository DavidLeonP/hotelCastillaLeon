<?php
class ClienteData {
	public static $tablename = "persona";


	public function ClienteData(){
		$this->id = ""; 
		$this->nombres = ""; 
		$this->apellidos = "";
		$this->direccion = "";
		$this->email = "";
		$this->telefono = "";
		$this->usuario = "";
		$this->password = ""; 
		$this->ocupacion = ""; 
		$this->estado_civil = ""; 
	} 

	public function add(){
		$sql = "insert into cliente (nombres,apellidos,direccion,email,telefono,usuario,password,ocupacion,estado_civil) ";
		$sql .= "value (\"$this->nombres\",\"$this->apellidos\",\"$this->direccion\",\"$this->email\",\"$this->telefono\",\"$this->usuario\",\"$this->password\",\"$this->ocupacion\",\"$this->estado_civil\")";
		return Executor::doit($sql);
	}

	public static function delById($id){
		$sql = "delete from ".self::$tablename." where id=$id";
		Executor::doit($sql);
	}
	public function del(){
		$sql = "delete from ".self::$tablename." where id=$this->id";
		Executor::doit($sql);
	}

// partiendo de que ya tenemos creado un objecto ClienteData previamente utilizamos el contexto
	public function update(){
		$sql = "update ".self::$tablename." set nombres=\"$this->nombres\",apellidos=\"$this->apellidos\",direccion=\"$this->direccion\",email=\"$this->email\",telefono=\"$this->telefono\",usuario=\"$this->usuario\",ocupacion=\"$this->ocupacion\",estado_civil=\"$this->estado_civil\" where id=$this->id";
		Executor::doit($sql);
	}

	public static function getById($id){
		$sql = "select * from ".self::$tablename." where id=$id";
		$query = Executor::doit($sql);
		return Model::one($query[0],new ClienteData());

	}


	public static function getAll(){
		$sql = "select * from ".self::$tablename;
		$query = Executor::doit($sql);
		return Model::many($query[0],new ClienteData());
	}

	
	public static function getLike($q){
		$sql = "select * from ".self::$tablename." where nombres like '%$q%' or apellidos like '%$q%'";
		$query = Executor::doit($sql);
		return Model::many($query[0],new ClienteData());

	}


}

?>