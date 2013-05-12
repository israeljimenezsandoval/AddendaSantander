
<%@ page import="com.dsindigo.addendasantander.Comprobante" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'comprobante.label', default: 'Comprobante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-comprobante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-comprobante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list comprobante">
			
				<g:if test="${comprobanteInstance?.basilea}">
				<li class="fieldcontain">
					<span id="basilea-label" class="property-label"><g:message code="comprobante.basilea.label" default="Basilea" /></span>
					
						<span class="property-value" aria-labelledby="basilea-label"><g:link controller="basilea" action="show" id="${comprobanteInstance?.basilea?.id}">${comprobanteInstance?.basilea?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${comprobanteInstance?.informacionEmision}">
				<li class="fieldcontain">
					<span id="informacionEmision-label" class="property-label"><g:message code="comprobante.informacionEmision.label" default="Informacion Emision" /></span>
					
						<span class="property-value" aria-labelledby="informacionEmision-label"><g:link controller="informacionEmision" action="show" id="${comprobanteInstance?.informacionEmision?.id}">${comprobanteInstance?.informacionEmision?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${comprobanteInstance?.informacionPago}">
				<li class="fieldcontain">
					<span id="informacionPago-label" class="property-label"><g:message code="comprobante.informacionPago.label" default="Informacion Pago" /></span>
					
						<g:each in="${comprobanteInstance.informacionPago}" var="i">
						<span class="property-value" aria-labelledby="informacionPago-label"><g:link controller="informacionPago" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${comprobanteInstance?.inmuebles}">
				<li class="fieldcontain">
					<span id="inmuebles-label" class="property-label"><g:message code="comprobante.inmuebles.label" default="Inmuebles" /></span>
					
						<span class="property-value" aria-labelledby="inmuebles-label"><g:link controller="inmuebles" action="show" id="${comprobanteInstance?.inmuebles?.id}">${comprobanteInstance?.inmuebles?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${comprobanteInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="comprobante.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${comprobanteInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${comprobanteInstance?.id}" />
					<g:link class="edit" action="edit" id="${comprobanteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
