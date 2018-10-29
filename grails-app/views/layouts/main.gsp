<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon1.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>

    <style>


    .navbar {
      margin-bottom: 0;
      border-radius: 0;
      background-color: #006699;
      font-size: 17px;
    }

    .footer {
      background-color: #006699;
      padding: 25px;
      font-size: 17px;
    }
    </style>

</head>
<body>

    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="/#" style="padding-right:150px">
		              <asset:image src="logo.jpg" alt="Logo" id="Logo" />
                </a>
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>


        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Inicio</a></li>
            <li><a href="view/masVistas/administracion.gsp">Quiénes somos</a></li> <!--VER URL!!!-->
            <li><a href="#">Ofertas-Avisos</a></li>
            <form class="navbar-form navbar-left" action="#">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search" name="search">
              </div>
              <button type="submit" class="btn btn-default">Buscar</button>
            </form>
          </ul>
          <ul class="nav navbar-nav navbar-right">
              <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          </ul>
        </div>
      </div>
    </nav>

<br>
    <g:layoutBody/>

    <div class="footer" role="contentinfo" style="color:Gray;">Inmobiliaria<br> Dirección <br> Teléfono <br> Horarios de Atención</div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
