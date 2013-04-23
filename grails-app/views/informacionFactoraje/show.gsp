
<%@ page import="com.dsindigo.addendasantander.InformacionFactoraje" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'informacionFactoraje.label', default: 'InformacionFactoraje')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-informacionFactoraje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-informacionFactoraje" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list informacionFactoraje">
			
				<g:if test="${informacionFactorajeInstance?.deudorProveedor}">
				<li class="fieldcontain">
					<span id="deudorProveedor-label" class="property-label"><g:message code="informacionFactoraje.deudorProveedor.label" default="Deudor Proveedor" /></span>
					
						<span class="property-value" aria-labelledby="deudorProveedor-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="deudorProveedor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.tipoDocumento}">
				<li class="fieldcontain">
					<span id="tipoDocumento-label" class="property-label"><g:message code="informacionFactoraje.tipoDocumento.label" default="Tipo Documento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDocumento-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="tipoDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.numeroDocumento}">
				<li class="fieldcontain">
					<span id="numeroDocumento-label" class="property-label"><g:message code="informacionFactoraje.numeroDocumento.label" default="Numero Documento" /></span>
					
						<span class="property-value" aria-labelledby="numeroDocumento-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="numeroDocumento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.plazo}">
				<li class="fieldcontain">
					<span id="plazo-label" class="property-label"><g:message code="informacionFactoraje.plazo.label" default="Plazo" /></span>
					
						<span class="property-value" aria-labelledby="plazo-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="plazo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.valorNominal}">
				<li class="fieldcontain">
					<span id="valorNominal-label" class="property-label"><g:message code="informacionFactoraje.valorNominal.label" default="Valor Nominal" /></span>
					
						<span class="property-value" aria-labelledby="valorNominal-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="valorNominal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.aforo}">
				<li class="fieldcontain">
					<span id="aforo-label" class="property-label"><g:message code="informacionFactoraje.aforo.label" default="Aforo" /></span>
					
						<span class="property-value" aria-labelledby="aforo-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="aforo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.precioBase}">
				<li class="fieldcontain">
					<span id="precioBase-label" class="property-label"><g:message code="informacionFactoraje.precioBase.label" default="Precio Base" /></span>
					
						<span class="property-value" aria-labelledby="precioBase-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="precioBase"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.tasaDescuento}">
				<li class="fieldcontain">
					<span id="tasaDescuento-label" class="property-label"><g:message code="informacionFactoraje.tasaDescuento.label" default="Tasa Descuento" /></span>
					
						<span class="property-value" aria-labelledby="tasaDescuento-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="tasaDescuento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.precioFactoraje}">
				<li class="fieldcontain">
					<span id="precioFactoraje-label" class="property-label"><g:message code="informacionFactoraje.precioFactoraje.label" default="Precio Factoraje" /></span>
					
						<span class="property-value" aria-labelledby="precioFactoraje-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="precioFactoraje"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.importeDescuento}">
				<li class="fieldcontain">
					<span id="importeDescuento-label" class="property-label"><g:message code="informacionFactoraje.importeDescuento.label" default="Importe Descuento" /></span>
					
						<span class="property-value" aria-labelledby="importeDescuento-label"><g:fieldValue bean="${informacionFactorajeInstance}" field="importeDescuento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionFactorajeInstance?.fechaVencimiento}">
				<li class="fieldcontain">
					<span id="fechaVencimiento-label" class="property-label"><g:message code="informacionFactoraje.fechaVencimiento.label" default="Fecha Vencimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaVencimiento-label"><g:formatDate date="${informacionFactorajeInstance?.fechaVencimiento}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${informacionFactorajeInstance?.id}" />
					<g:link class="edit" action="edit" id="${informacionFactorajeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
