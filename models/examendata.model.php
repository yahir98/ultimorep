<?php
require_once "libs/dao.php";

/*
SELECT `lacteos`.`idlacteo`,
    `lacteos`.`nombre`,
    `lacteos`.`precio`,
    `lacteos`.`estado`
FROM `examen2`.`lacteos`;
*/
/**
 * Obtiene los registro de la tabla de modas
 *
 * @return Array
 */
function obtenerListas()
{
    $sqlstr = "select `lacteos`.`idlacteo`,
    `lacteos`.`nombre`,
    `lacteos`.`precio`,
    `lacteos`.`estado`
    FROM `examen2`.`lacteos`";

    $modas = array();
    $modas = obtenerRegistros($sqlstr);
    return $modas;
}


// Elaborar el algoritmo de los solicitado aquí.


?>
