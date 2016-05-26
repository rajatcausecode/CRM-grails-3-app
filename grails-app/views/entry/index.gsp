<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'entry.label', default: 'Entry')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="jumbotron">
            <div class="container">
              <h1>HOLA!</h1>
              <p>Hello guys this is a very simple app built on top of Groovy on Grails framework. Just create an entry with your details to get free super-powers!!</p>
            </div>
        </div>
        <div id="create-entry" class="container content scaffold-create" role="main">
            <!-- <h1 class="text-center"><g:message code="default.create.label" args="[entityName]" /></h1> -->
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.entry}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.entry}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <h3>Details Please</h3>
                    <g:form action="save">
                        <fieldset class="form">
                            <f:all bean="entry"/>
                        </fieldset>
                        <fieldset class="buttons">
                            <g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                        </fieldset>
                    </g:form>
                </div>
            </div>
        </div>
    </body>
</html>
