<section>
  <header>
    <h1>Gestion de lacteos</h1>
  </header>
  <main>
    <table class="full-width">
      <thead>
        <tr>
          <th>Cod</th>
          <th>Producto</th>
          <th>Precio</th>
          <th>Estado</th>
          <th class="right">
            <form action="index.php?page=examenform" method="post">
            <input type="hidden" name="idlacteo" value="" />
            <input type="hidden" name="xcfrt" value="{{~xcfrt}}" />
            <button type="submit" name="btnIns">Agregar</button>
          </form>
          </th>
        </tr>
      </thead>
      <tbody class="zebra">
        {{foreach lacteos}}
        <tr>
          <td>{{idlacteo}}</td>
          <td>{{nombre}}</td>
          <td>{{precio}}</td>
          <td>{{estado}}</td>
          <td class="right">
            <form action="index.php?page=examenform" method="post">
              <input type="hidden" name="idlacteo" value="{{idlacteo}}"/>
              <input type="hidden" name="xcfrt" value="{{~xcfrt}}" />
              <button type="submit" name="btnDsp">Ver</button>
              <button type="submit" name="btnUpd">Editar</button>
              <button type="submit" name="btnDel">Eliminar</button>
            </form>
          </td>
        </tr>
        {{endfor lacteos}}
      </tbody>
      <tfoot>
        <tr>
          <td colspan="6"> Paginación</td>
        </tr>
      </tfoot>
    </table>
  </main>
</section>
