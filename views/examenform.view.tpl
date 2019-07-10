<h1>{{modeDsc}}</h1>
<section class="row">
<form action="index.php?page=examenform" method="post" class="col-8 col-offset-2">
  {{if hasErrors}}
    <section class="row">
      <ul class="error">
        {{foreach errores}}
          <li>{{this}}</li>
        {{endfor errores}}
      </ul>
    </section>
  {{endif hasErrors}}
  <input type="hidden" name="mode" value="{{mode}}"/>
  <input type="hidden" name="xcfrt" value="{{xcfrt}}" />
  <input type="hidden" name="btnConfirmar" value="Confirmar" />
  {{if showidlacteo}}
  <fieldset class="row">
    <label class="col-5" for="idlacteo">Código de producto</label>
    <input type="text" name="idlacteo" id="idlacteo" readonly value="{{idlacteo}}" class="col-7" />
  </fieldset>
  {{endif showidlacteo}}
  <fieldset class="row">
    <label class="col-5" for="nombre">Nombre</label>
    <input type="text" name="nombre" id="nombre" {{readonly}} value="{{nombre}}" class="col-7" />
  </fieldset>
  <fieldset class="row">
    <label class="col-5" for="precproducto">Precio de Venta</label>
    <input type="text" name="precproducto" id="precproducto" {{readonly}} value="{{precio}}" class="col-7" />
  </fieldset>

  <fieldset class="row">
    <label class="col-5" for="estado">Estado</label>
    <select name="estado" id="estado" class="col-7" {{selectDisable}} {{readonly}} >
      {{foreach estadolacteos}}
        <option value="{{cod}}" {{selected}}>{{dsc}}</option>
      {{endfor estadolacteos}}
    </select>
  </fieldset>
  <fieldset class="row">
    <div class="right">
      {{if showBtnConfirmar}}
      <button type="button" id="btnConfirmar" >Confirmar</button>
      &nbsp;
      {{endif showBtnConfirmar}}
      <button type="button" id="btnCancelar">Cancelar</button>
    </div>
  </fieldset>
  <!--
   <td>{{idmoda}}</td>
    <td>{{dscmoda}}</td>
    <td>{{prcmoda}}</td>
    <td>{{ivamoda}}</td>
    <td>{{estmoda}}</td>
   -->
</form>
</section>
<script>
  $().ready(function(){
    $("#btnCancelar").click(function(e){
      e.preventDefault();
      e.stopPropagation();
      location.assign("index.php?page=examenlist");
    });
    $("#btnConfirmar").click(function(e){
      e.preventDefault();
      e.stopPropagation();
      /*Aqui deberia hacer validación de datos*/
      document.forms[0].submit();
    });
  });
</script>
