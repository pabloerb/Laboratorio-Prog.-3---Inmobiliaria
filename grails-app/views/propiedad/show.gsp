<!DOCTYPE html>
<html>
    <head>
      <head>
        <g:if test="${session!=null && session.usuario!=null}">
          <meta name="layout" content="mainUsuario" />
        </g:if>
        <g:else>
        <meta name="layout" content="main" />
      </g:else>
        <g:set var="entityName" value="${message(code: 'propiedad.label', default: 'Propiedad')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-propiedad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
              <g:if test="${session!=null && session.usuario!=null}">
              <li><g:link controller="administracion" action="sesion">Menu principal</g:link> </li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </g:if>
                <g:else>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
              </g:else>
            </ul>
        </div>
        <div id="show-propiedad" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="propiedad" />
            <g:form resource="${this.propiedad}" method="DELETE">
                <fieldset class="buttons">
                  <g:if test="${session!=null && session.usuario!=null}">
                    <g:link class="edit" action="edit" resource="${this.propiedad}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </g:if>
                    <g:else>
                     <li><g:link class="create" controller="propiedad" action="agregarCliente" params="[idpropiedad:this.propiedad.id]"><span class="glyphicon glyphicon-log-in"></span>Obtener mas informacion</g:link></li>
                    </g:else>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
