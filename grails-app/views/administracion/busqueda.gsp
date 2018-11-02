<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'administracion.label', default: 'Administracion')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}">Volver al Inicio</a></li>
            </ul>
        </div>
        <div id="list-administracion" class="content scaffold-list" role="main">
            <h1>Lista de las propiedades</h1>
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
