<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Inmobiliaria</title>

    <style>
    .carousel-inner img {
        width: 100%; /* Set width to 100%- Establecer ancho a 100% */
        margin: auto;
        min-height:300px;
        max-height: 300px;
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide
  Oculte el texto del carrusel cuando la pantalla tenga menos de 600 píxeles de ancho */
    @media (max-width: 600px) {
      .carousel-caption {
        display: none;
      }
    }
    </style>
</head>
<body>

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
          <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides
    Envoltura para diapositivas -->
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <asset:image src="casa-carrusel1.jpg" alt="Image"/>
            <div class="carousel-caption">
              <h3>TÍTULO</h3>
              <p>Descripción...</p>
            </div>
          </div>

          <div class="item">
            <asset:image src="departamento-carrusel.jpg" alt="Image"/>
            <div class="carousel-caption">
              <h3>TÍTULO</h3>
              <p>Descripción...</p>
            </div>
          </div>

          <div class="item">
            <asset:image src="local-carrusel.jpg" alt="Image"/>
            <div class="carousel-caption">
              <h3>TÍTULO</h3>
              <p>Descripción...</p>
            </div>
          </div>

          <div class="item">
            <asset:image src="oficina-carrusel.jpg" alt="Image"/>
            <div class="carousel-caption">
              <h3>TÍTULO</h3>
              <p>Descripción...</p>
            </div>
          </div>

        </div>

        <!-- Left and right controls
        Controles izquierdo y derecho píxeles de ancho-->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="container text-center">
      <h3>Ofertas</h3><br>
      <div class="row">
        <div class="col-sm-4">
          <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Imagen de Oferta">
          <p>Descripción</p>
        </div>
        <div class="col-sm-4">
          <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
          <p>Descripción</p>
        </div>
        <div class="col-sm-4">
            <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
            <p>Descripción</p>
          </div>
          <div class="col-sm-4">
              <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
              <p>Descripción</p>
            </div>
            <div class="col-sm-4">
                <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
                <p>Descripción</p>
              </div>
              <div class="col-sm-4">
                  <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
                  <p>Descripción</p>
                </div>
                            
</body>
</html>
