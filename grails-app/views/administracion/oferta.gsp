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
            <g:each var="propiedad" in="${listaPropiedades}">
              <div class="col-sm-4">
                <asset:image src="${propiedad.nombreImagen}" class="img-responsive" style="width:100%" alt="Imagen de Oferta" />
                <p> ${propiedad.tipoOperacion} Ubicación: ${propiedad.localidad} ${propiedad.barrio}<br>
                  <g:link controller="propiedad" action="agregarCliente" params="[idpropiedad:propiedad.id]">Más información</g:link>
                </p>
              </div>
            </g:each>
          </div>
        </div>

</body>

</html>
