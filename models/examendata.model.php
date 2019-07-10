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


function obtenerproductoPorId($id)
{
  $sqlstr="select `lacteos`.`idlacteo`,
  `lacteos`.`nombre`,
  `lacteos`.`precio`,
  `lacteos`.`estado`
  FROM `examen2`.`lacteos` where idlacteo=%d";
  $productos= array();
  $productos=obtenerUnRegistro(sprintf($sqlstr, $id));
  return $productos;
}

function obtenerEstados()
{
    return array(
        array("cod"=>"ACT", "dsc"=>"Activo"),
        array("cod"=>"INA", "dsc"=>"Inactivo"),
        array("cod"=>"PLN", "dsc"=>"En Planificación"),
        array("cod"=>"RET", "dsc"=>"Retirado"),
        array("cod"=>"SUS", "dsc"=>"Suspendido"),
        array("cod"=>"DES", "dsc"=>"Descontinuado")
    );
}

function agregarNuevoproducto($nombre, $precio, $estado) {
    $insSql = "INSERT INTO lacteos(nombre, precio, estado)
      values ('%s', %f, '%s');";
      if (ejecutarNonQuery(
          sprintf(
              $insSql,
              $nombre,
              $precio,
              $estado
          )))
      {
        return getLastInserId();
      } else {
          return false;
      }
}

function modificarproducto($nombre, $precio, $estado, $idlacteo)
{
    $updSQL = "UPDATE lacteos set nombre='%s', precio=%f,
    estado='%s' where idlacteo=%d;";

    return ejecutarNonQuery(
        sprintf(
            $updSQL,
            $nombre,
            $precio,
            $estado,
            $idlacteo
        )
    );
}
function eliminarproducto($idlacteo)
{
    $delSQL = "DELETE FROM lacteos where idlacteo=%d;";

    return ejecutarNonQuery(
        sprintf(
            $delSQL,
            $idlacteo
        )
    );
}

// Elaborar el algoritmo de los solicitado aquí.


?>
