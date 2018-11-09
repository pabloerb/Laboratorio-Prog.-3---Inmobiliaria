<!DOCTYPE html>
<html>
    <head>
      <g:if test="${session!=null && session.usuario!=null}">
        <meta name="layout" content="mainUsuario" />
      </g:if>
      <g:else>
      <meta name="layout" content="main" />
    </g:else>
        <g:set var="entityName" value="${message(code: 'propietario.label', default: 'Propietario')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-propietario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
              <g:if test="${session!=null && session.usuario!=null}">
              <li><g:link controller="administracion" action="sesion">Menu principal</g:link> </li>
                <li><g:link class="list" action="index">Lista de Propietarios</g:link></li>
                <li><g:link class="create" action="create">Nuevo Propietario</g:link></li>
                </g:if>
                <g:else>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
              </g:else>
            </ul>
        </div>
        <div id="show-propietario" class="content scaffold-show" role="main">
            <h1>Propietario</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">Operacion exitosa</div>
            </g:if>
            <f:display bean="propietario" />
            <g:form resource="${this.propietario}" method="DELETE">
                <fieldset class="buttons">
                  <g:if test="${session!=null && session.usuario!=null}">
                    <g:link class="edit" action="edit" resource="${this.propietario}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </g:if>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
