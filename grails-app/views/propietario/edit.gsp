<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="mainUsuario" />
        <g:set var="entityName" value="${message(code: 'propietario.label', default: 'Propietario')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-propietario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
              <li><g:link controller="administracion" action="sesion">Menu principal</g:link> </li>
              <li><g:link class="list" action="index">Lista de Propietarios</g:link></li>
              <li><g:link class="create" action="create">Nueva Propietario</g:link></li>
            </ul>
        </div>
        <div id="edit-propietario" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.propietario}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.propietario}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.propietario}" method="PUT">
                <g:hiddenField name="version" value="${this.propietario?.version}" />
                <fieldset class="form">
                    <f:all bean="propietario"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
