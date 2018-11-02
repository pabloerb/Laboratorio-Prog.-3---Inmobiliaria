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
            <li><g:link controller="administracion" action="inicio">Inicio</g:link></li>
            <li><g:link controller="administracion" action="mostrarInfo">Quienes somos</g:link></li>
            <li><a href="#">Ofertas-Avisos</a></li>
              <div class="form-group">
                <g:form controller="administracion" action="buscarPropiedades" method="POST">
                <input type="text" class="form-control" placeholder="Barrio" name="barrio" id="barrio">
                <input type="text" class="form-control" placeholder="Ciudad" name="ciudad" id="ciudad">
                <button type="submit" class="btn btn-default">Buscar propiedades</button>
              </div>
            </g:form>
          </ul>
          <ul class="nav navbar-nav navbar-right">
              <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <g:if test="${session!=null && session.usuario!=null}">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Usuario: ${session?.usuario?.nombreUsuario}</a></li>
            <li><g:link controller="login" action="logout" ><span class="glyphicon glyphicon-log-in"></span> Cerrar Sesion</g:link></li>
            </g:if>
            <g:else>
            <li><g:link controller="login" action="login"><span class="glyphicon glyphicon-log-in"></span>Login</g:link></li>
            </g:else>
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
