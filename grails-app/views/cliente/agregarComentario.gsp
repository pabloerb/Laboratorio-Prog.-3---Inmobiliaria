<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'comentario.label', default: 'Comentario')}" />
        <title>Formulario</title>
    </head>
    <body>
        <a href="#create-comentario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link controller="administracion" action="sesion">Menu principal</g:link> </li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-comentario" class="content scaffold-create" role="main">
            <h1>Formulario</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.comentario}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.comentario}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.comentario}" method="POST">
                <fieldset class="form">
                    <label for="comentario">Comentario:</label>
                    <input type="text" name="comentario" id="comentario">
                    <input type="text" hidden value="No leido" name="estado" id="estado">
                    <input type="text" hidden value="${this.comentario.cliente.id}" name="cliente" id="cliente">
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
