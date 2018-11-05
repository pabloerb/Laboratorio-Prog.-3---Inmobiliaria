<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
        <title><g:message code="default.create.label" args="[entityName]" />Formulario</title>
    </head>
    <body>
        <a href="#create-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link controller="administracion" action="sesion">Menu principal</g:link> </li>
                <g:if test="${session!=null && session.usuario!=null}">
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
              </g:if>
            </ul>
        </div>
        <div id="create-cliente" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.cliente}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.cliente}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.cliente}" method="POST">
            <fieldset class="form">
                <label for="nombre">Nombre:</label>
                <input type="text" name="nombre" id="nombre">
                <br>
                <label for="apellido">Apellido:</label>
                <input type="text" name="apellido" id="apellido">
                <br>
                <label for="dni">Documento:</label>
                <input type="number" name="dni" id="dni">
                <br>
                <label for="email">Email:</label>
                <input type="text" name="email" id="email">
                <br>
                <label for="propiedad">Propiedad interesada:</label>
                <input type="text" disabled value="${cliente.propiedad.toString()}" name="propiedad" id="propiedad">
                <br>
                <input type="text" hidden name="comentario" id="comentario">
                <br>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="Enviar" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
