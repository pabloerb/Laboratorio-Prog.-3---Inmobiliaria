<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="layout" content="main" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <title></title>
  <style>
    p {
      border-style: dashed;
      border-color: #006699;
    }

    h2 {
      border-left: 6px solid #006699;
      background-color: lightgrey;

    }
  </style>
</head>

<body>
  <section class="section-inicial section-terminos">
    <div class="container">
      <div class="row">
        <div class="col-12 item-terminos">
          <h2 class="roboto-bold">Ofertas</h2>
          <br><br><br>
        </div>

        <div class="container text-center">
          <div class="row">
            <g:each var="propiedades" in="${listaPropiedades}">
              <div class="col-sm-4">
                <asset:image src="oferta1-casa.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
                <p>${propiedades.tipoOperacion} - ${propiedades.barrio} ${propiedades.localidad} <br>
                  <g:link controller="administracion" action="formOferta">Más información</g:link>
                </p>
              </div>
            </g:each>



          </div>
        </div>













        ---------------------------------------------------------------------
        <div class="container text-center">
          <div class="row">
            <div class="col-sm-4">
              <asset:image src="oferta1-casa.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Venta-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
            <div class="col-sm-4">
              <asset:image src="oferta2-departamento.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Alquiler-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
            <div class="col-sm-4">
              <asset:image src="oferta3-local.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Venta-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-4">
              <asset:image src="oferta4-oficina.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Alquiler-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
            <div class="col-sm-4">
              <asset:image src="oferta5-casa.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Venta-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
            <div class="col-sm-4">
              <asset:image src="oferta6-departamento.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Alquiler-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-4">
              <asset:image src="oferta7-local.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Venta-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
            <div class="col-sm-4">
              <asset:image src="oferta8-oficina.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Alquiler-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
            <div class="col-sm-4">
              <asset:image src="oferta9-casa.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Venta-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-4">
              <asset:image src="oferta10-departamento.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Alquiler-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
            <div class="col-sm-4">
              <asset:image src="oferta11-local.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Venta-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>

            <div class="col-sm-4">
              <asset:image src="oferta12-oficina.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Alquiler-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-4">
              <asset:image src="oferta13-casa.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Venta-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>

            <div class="col-sm-4">
              <asset:image src="oferta14-departamento.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Alquiler-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>

            <div class="col-sm-4">
              <asset:image src="oferta15-local.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Venta-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>

          </div>
          <div class="row">
            <div class="col-sm-4">
              <asset:image src="oferta16-oficina.png" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
              <p>Alquiler-Dirección <br>
                <g:link controller="administracion" action="formOferta">Más información</g:link>
              </p>
            </div>
          </div>
        </div>
      </div>


</body>

</html>