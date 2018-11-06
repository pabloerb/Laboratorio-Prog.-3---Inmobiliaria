<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Inmobiliaria"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="logo.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>

    <!--Agregado-->
    <style>
        a{
            padding-left: 2px;
            color: #000000;
            text-decoration: none;
        }
        .navbar-default a{
            color: black !important;
        }

        #logo{
          padding-right: 20px;
        }

        li{
            padding-right: 20px;
        }

        .footer {
            font-size: 15px;
            font-weight: bold;
        }

        .navbar-nav{
            list-style:none;
        }

    </style>
    <!--FIN Agregado-->












</head>
<body>


    <!--<div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
		    <asset:image src="grails.svg" alt="Grails Logo"/>
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <g:pageProperty name="page.nav" />
                </ul>
            </div>
        </div>
    </div>-->

    <!--Agregado-->
    <div class="navbar navbar-default navbar-inverse" role="navigation" >
        <div class="container">
            <div class="navbar-header">
              <a class="navbar-brand" href="/#" style="padding-right:150px">
                      <asset:image src="logo.ico" alt="Logo" id="Logo" title="Inicio"/>
                </a>
            </div>

            <div class="collapse navbar-collapse " id="navbarCollapse">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item" ><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="usuarioRol" action="index">USUARIOS</g:link></button></li>
                <li class="nav-item" ><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="propiedad" action="index">PROPIEDADES</g:link></button></li>
                <li class="nav-item" ><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="cliente" action="index">CLIENTES</g:link></button></li>
                <li class="nav-item" ><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="comentario" action="index">COMENTARIOS</g:link></button></li>
                <li class="nav-item"><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="login" action="logout">CERRAR SESION</g:link></button></li>
              </ul>


            </div>

        </div>
    </div>
    <!--FIN Agregado-->

    <g:layoutBody/>


    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>


    <asset:javascript src="application.js"/>

</body>
</html>
