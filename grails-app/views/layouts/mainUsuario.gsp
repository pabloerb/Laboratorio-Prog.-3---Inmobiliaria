<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Inmobiliaria"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon1.ico" type="image/x-ico" />

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>

    
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
        
        body{
          background-image: url('${resource(dir:"images/", file: "asesoria-inmobiliaria.jpg")}');
        background-size: 100%;
        background-repeat: no-repeat;
        background-attachment: fixed;
        }

        th{
          background: #0088cc;
        }

        th a{
          color:azure!important;
        }

        th:hover{
          background: #0088cc;
        }

        td, td a{
          color: black;

        }
        td{
          border-top: solid 1px;
          border-color: #006699;
        }

        th{
          border-top: solid 1px;
          padding-top: 15px;
          text-align: left;
        }

    </style>
    
</head>
<body>

  
    <div class="navbar navbar-default navbar-inverse" role="navigation" >
        <div class="container">
            <div class="navbar-header">
              <a class="navbar-brand" href="/#" style="padding-right:150px">
                      <asset:image src="logo.jpg" alt="Logo" id="Logo" title="Inicio"/>
                </a>
            </div>

            <div class="collapse navbar-collapse " id="navbarCollapse">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item" ><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="propietario" action="index">PROPIETARIOS</g:link></button></li>
                <li class="nav-item" ><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="propiedad" action="index">PROPIEDADES</g:link></button></li>
                <li class="nav-item" ><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="cliente" action="index">CLIENTES</g:link></button></li>
                <li class="nav-item" ><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="comentario" action="index">COMENTARIOS</g:link></button></li>
                <li class="nav-item"><button type="button" class="btn btn-inverse navbar-btn"><g:link controller="login" action="logout">CERRAR SESION</g:link></button></li>
              </ul>


            </div>

        </div>
    </div>
    

    <g:layoutBody/>


    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>


    <asset:javascript src="application.js"/>

</body>
</html>
