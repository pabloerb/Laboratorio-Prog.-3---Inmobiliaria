<!DOCTYPE html>
<html>
    <head>
      <g:if test="${session!=null && session.usuario!=null}">
        <meta name="layout" content="mainUsuario" />
      </g:if>
      <g:else>
      <meta name="layout" content="main" />
    </g:else>
        <g:set var="entityName" value="${message(code: 'comentario.label', default: 'Comentario')}" />
        <title>Lista de Comentarios</title>
    </head>
    <body>
        <a href="#list-comentario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
              <g:if test="${session!=null && session.usuario!=null}">
              <li><g:link controller="administracion" action="sesion">Menu principal</g:link> </li>
              <li><g:link class="create" action="create">Nuevo Comentario</g:link></li>
              </g:if>
                <g:else>
                  <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                </g:else>
            </ul>
        </div>
        <div id="list-comentario" class="content scaffold-list" role="main">
            <h1>Lista de Comentarios</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${comentarioList}" />

            <div class="pagination">
                <g:paginate total="${comentarioCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
