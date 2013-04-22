
<%@ page import="com.dsindigo.addendasantander.InformacionEmision" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'informacionEmision.label', default: 'InformacionEmision')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-informacionEmision" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-informacionEmision" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list informacionEmision">
			
				<g:if test="${informacionEmisionInstance?.centroCostos}">
				<li class="fieldcontain">
					<span id="centroCostos-label" class="property-label"><g:message code="informacionEmision.centroCostos.label" default="Centro Costos" /></span>
					
						<span class="property-value" aria-labelledby="centroCostos-label"><g:fieldValue bean="${informacionEmisionInstance}" field="centroCostos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionEmisionInstance?.claveSantander}">
				<li class="fieldcontain">
					<span id="claveSantander-label" class="property-label"><g:message code="informacionEmision.claveSantander.label" default="Clave Santander" /></span>
					
						<span class="property-value" aria-labelledby="claveSantander-label"><g:fieldValue bean="${informacionEmisionInstance}" field="claveSantander"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionEmisionInstance?.codigoCliente}">
				<li class="fieldcontain">
					<span id="codigoCliente-label" class="property-label"><g:message code="informacionEmision.codigoCliente.label" default="Codigo Cliente" /></span>
					
						<span class="property-value" aria-labelledby="codigoCliente-label"><g:fieldValue bean="${informacionEmisionInstance}" field="codigoCliente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionEmisionInstance?.contrato}">
				<li class="fieldcontain">
					<span id="contrato-label" class="property-label"><g:message code="informacionEmision.contrato.label" default="Contrato" /></span>
					
						<span class="property-value" aria-labelledby="contrato-label"><g:fieldValue bean="${informacionEmisionInstance}" field="contrato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionEmisionInstance?.factorajes}">
				<li class="fieldcontain">
					<span id="factorajes-label" class="property-label"><g:message code="informacionEmision.factorajes.label" default="Factorajes" /></span>
					
						<g:each in="${informacionEmisionInstance.factorajes}" var="f">
						<span class="property-value" aria-labelledby="factorajes-label"><g:link controller="informacionFactoraje" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${informacionEmisionInstance?.folioInterno}">
				<li class="fieldcontain">
					<span id="folioInterno-label" class="property-label"><g:message code="informacionEmision.folioInterno.label" default="Folio Interno" /></span>
					
						<span class="property-value" aria-labelledby="folioInterno-label"><g:fieldValue bean="${informacionEmisionInstance}" field="folioInterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionEmisionInstance?.periodo}">
				<li class="fieldcontain">
					<span id="periodo-label" class="property-label"><g:message code="informacionEmision.periodo.label" default="Periodo" /></span>
					
						<span class="property-value" aria-labelledby="periodo-label"><g:fieldValue bean="${informacionEmisionInstance}" field="periodo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionEmisionInstance?.tFactoraje}">
				<li class="fieldcontain">
					<span id="tFactoraje-label" class="property-label"><g:message code="informacionEmision.tFactoraje.label" default="TF actoraje" /></span>
					
						<span class="property-value" aria-labelledby="tFactoraje-label"><g:link controller="informacionFactoraje" action="show" id="${informacionEmisionInstance?.tFactoraje?.id}">${informacionEmisionInstance?.tFactoraje?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${informacionEmisionInstance?.id}" />
					<g:link class="edit" action="edit" id="${informacionEmisionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
