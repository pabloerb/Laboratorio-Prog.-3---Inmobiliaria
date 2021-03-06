<!DOCTYPE html>
<html>
    <head>
      <g:if test="${session!=null && session.usuario!=null}">
        <meta name="layout" content="mainUsuario" />
      </g:if>
      <g:else>
      <meta name="layout" content="main" />
    </g:else>
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
              <g:if test="${session!=null && session.usuario!=null}">
              <li><g:link controller="administracion" action="sesion">Menu principal</g:link> </li>
                <li><g:link class="list" action="index">Lista de Clientes</g:link></li>
                <li><g:link class="create" action="create">Nuevo Cliente</g:link></li>
                </g:if>
                <g:else>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
              </g:else>
            </ul>
        </div>
        <div id="show-cliente" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${session!=null && session.usuario!=null}">
            <g:if test="${flash.message}">
            <div class="message" role="status">Operacion exitosa</div>
            </g:if>
            </g:if>
            <g:else>
            <g:if test="${flash.message}">
            <div class="message" role="status">Operacion exitosa, formulario enviado</div>
          </g:if>
          </g:else>

            <f:display bean="cliente" />
            <g:form resource="${this.cliente}" method="DELETE">
                <fieldset class="buttons">
                  <g:if test="${session!=null && session.usuario!=null}">
                    <g:link class="edit" action="edit" resource="${this.cliente}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                  </g:if>
                  <g:else>
                   <li><g:link class="create" controller="administracion" action="inicio"><span class="glyphicon glyphicon-log-in"></span>Volver a Inicio</g:link></li>
                 </g:else>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
