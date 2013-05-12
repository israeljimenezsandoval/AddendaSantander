<%@ page import="com.dsindigo.addendasantander.Comprobante"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'comprobante.label', default: 'Comprobante')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div class="row-fluid">
		<div class="span3">
			<div class="well">
				<ul class="nav nav-list">
					<li class="nav-header">
						${entityName}
					</li>
					<li><g:link class="list" action="list">
							<i class="icon-list"></i>
							<g:message code="default.list.label" args="[entityName]" />
						</g:link></li>
					<li class="active"><g:link class="create" action="create">
							<i class="icon-plus icon-white"></i>
							<g:message code="default.create.label" args="[entityName]" />
						</g:link></li>
				</ul>
			</div>
		</div>
		<div class="span9">


			<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">
					${flash.message}
				</bootstrap:alert>
			</g:if>

			<g:hasErrors bean="${comprobanteInstance}">
				<bootstrap:alert class="alert-error">
					<ul>
						<g:eachError bean="${comprobanteInstance}" var="error">
							<li
								<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
									error="${error}" /></li>
						</g:eachError>
					</ul>
				</bootstrap:alert>
			</g:hasErrors>
			<div id="create-comprobante" class="content scaffold-create"
				role="main">
				<h1>
					<g:message code="default.create.label" args="[entityName]" />
				</h1>
				<g:if test="${flash.message}">
					<div class="message" role="status">
						${flash.message}
					</div>
				</g:if>
				<g:hasErrors bean="${comprobanteInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${comprobanteInstance}" var="error">
							<li
								<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
									error="${error}" /></li>
						</g:eachError>
					</ul>
				</g:hasErrors>

				<g:set value="createForm" var="formId" />
				<g:set value="elementToReplace" var="elementToReplace" />
				<g:form action="save" name="${formId}">
					<fieldset class="form" id="${elementToReplace}">
						<g:render template="form" />
					</fieldset>
					<fieldset class="buttons">
						<g:submitButton name="create" class="save"
							value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</fieldset>
				</g:form>
			</div>

		</div>
	</div>
</body>
</html>
