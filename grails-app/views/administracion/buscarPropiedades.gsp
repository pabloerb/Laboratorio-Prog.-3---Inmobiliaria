<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'libro.label', default: 'Libro')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-libro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-propiedades" class="content scaffold-list" role="main">
          <br><br>
          <div class="panel panel-info" >
                  <div class="panel-heading">
                      Busqueda de Propiedades por Barrio y Ciudad
                  </div>

              </div>
              <br>
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>


            <f:table collection="${propiedadesList}" />

            <div class="pagination">
                <g:paginate total="${propiedadesCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
