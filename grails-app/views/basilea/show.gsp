
<%@ page import="com.dsindigo.addendasantander.Basilea" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'basilea.label', default: 'Basilea')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-basilea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-basilea" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list basilea">
			
				<g:if test="${basileaInstance?.numContrato}">
				<li class="fieldcontain">
					<span id="numContrato-label" class="property-label"><g:message code="basilea.numContrato.label" default="Num Contrato" /></span>
					
						<span class="property-value" aria-labelledby="numContrato-label"><g:fieldValue bean="${basileaInstance}" field="numContrato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basileaInstance?.origenGasto}">
				<li class="fieldcontain">
					<span id="origenGasto-label" class="property-label"><g:message code="basilea.origenGasto.label" default="Origen Gasto" /></span>
					
						<span class="property-value" aria-labelledby="origenGasto-label"><g:fieldValue bean="${basileaInstance}" field="origenGasto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${basileaInstance?.tipoGasto}">
				<li class="fieldcontain">
					<span id="tipoGasto-label" class="property-label"><g:message code="basilea.tipoGasto.label" default="Tipo Gasto" /></span>
					
						<span class="property-value" aria-labelledby="tipoGasto-label"><g:fieldValue bean="${basileaInstance}" field="tipoGasto"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${basileaInstance?.id}" />
					<g:link class="edit" action="edit" id="${basileaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
