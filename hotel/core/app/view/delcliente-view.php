<?php


$cliente = ClienteData::getById($_GET["id"]);
$cliente->delById($_GET["id"]);

Core::redir("./index.php?view=cliente");
?>