
<%@ page import="com.dsindigo.addendasantander.Inmuebles" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inmuebles.label', default: 'Inmuebles')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-inmuebles" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-inmuebles" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list inmuebles">
			
				<g:if test="${inmueblesInstance?.fechaVencimiento}">
				<li class="fieldcontain">
					<span id="fechaVencimiento-label" class="property-label"><g:message code="inmuebles.fechaVencimiento.label" default="Fecha Vencimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaVencimiento-label"><g:formatDate date="${inmueblesInstance?.fechaVencimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${inmueblesInstance?.numContrato}">
				<li class="fieldcontain">
					<span id="numContrato-label" class="property-label"><g:message code="inmuebles.numContrato.label" default="Num Contrato" /></span>
					
						<span class="property-value" aria-labelledby="numContrato-label"><g:fieldValue bean="${inmueblesInstance}" field="numContrato"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${inmueblesInstance?.id}" />
					<g:link class="edit" action="edit" id="${inmueblesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
