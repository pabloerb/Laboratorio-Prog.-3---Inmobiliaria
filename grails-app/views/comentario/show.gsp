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
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-comentario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
              <g:if test="${session!=null && session.usuario!=null}">
              <li><g:link controller="administracion" action="sesion">Menu principal</g:link> </li>
                <li><g:link class="list" action="index">Lista de Comentarios</g:link></li>
                <li><g:link class="create" action="create">Nuevo Comentario</g:link></li>
                </g:if>
                <g:else>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
              </g:else>
            </ul>
        </div>
        <div id="show-comentario" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">Comentario</div>
            </g:if>
            <f:display bean="comentario" />
            <g:form resource="${this.comentario}" method="DELETE">
                <fieldset class="buttons">
                    <g:if test="${session!=null && session.usuario!=null}">
                    <g:link class="edit" action="edit" resource="${this.comentario}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                  </g:if>

            </g:form>
        </div>
    </body>
</html>
