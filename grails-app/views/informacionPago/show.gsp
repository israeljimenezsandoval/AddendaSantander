
<%@ page import="com.dsindigo.addendasantander.InformacionPago" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'informacionPago.label', default: 'InformacionPago')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-informacionPago" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-informacionPago" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list informacionPago">
			
				<g:if test="${informacionPagoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="informacionPago.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${informacionPagoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.claveDeposito}">
				<li class="fieldcontain">
					<span id="claveDeposito-label" class="property-label"><g:message code="informacionPago.claveDeposito.label" default="Clave Deposito" /></span>
					
						<span class="property-value" aria-labelledby="claveDeposito-label"><g:fieldValue bean="${informacionPagoInstance}" field="claveDeposito"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.codigoISOMoneda}">
				<li class="fieldcontain">
					<span id="codigoISOMoneda-label" class="property-label"><g:message code="informacionPago.codigoISOMoneda.label" default="Codigo ISOM oneda" /></span>
					
						<span class="property-value" aria-labelledby="codigoISOMoneda-label"><g:fieldValue bean="${informacionPagoInstance}" field="codigoISOMoneda"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.concepto}">
				<li class="fieldcontain">
					<span id="concepto-label" class="property-label"><g:message code="informacionPago.concepto.label" default="Concepto" /></span>
					
						<span class="property-value" aria-labelledby="concepto-label"><g:fieldValue bean="${informacionPagoInstance}" field="concepto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.cuentaContable}">
				<li class="fieldcontain">
					<span id="cuentaContable-label" class="property-label"><g:message code="informacionPago.cuentaContable.label" default="Cuenta Contable" /></span>
					
						<span class="property-value" aria-labelledby="cuentaContable-label"><g:fieldValue bean="${informacionPagoInstance}" field="cuentaContable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.institucionReceptora}">
				<li class="fieldcontain">
					<span id="institucionReceptora-label" class="property-label"><g:message code="informacionPago.institucionReceptora.label" default="Institucion Receptora" /></span>
					
						<span class="property-value" aria-labelledby="institucionReceptora-label"><g:fieldValue bean="${informacionPagoInstance}" field="institucionReceptora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.nombreBeneficiario}">
				<li class="fieldcontain">
					<span id="nombreBeneficiario-label" class="property-label"><g:message code="informacionPago.nombreBeneficiario.label" default="Nombre Beneficiario" /></span>
					
						<span class="property-value" aria-labelledby="nombreBeneficiario-label"><g:fieldValue bean="${informacionPagoInstance}" field="nombreBeneficiario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.numProveedor}">
				<li class="fieldcontain">
					<span id="numProveedor-label" class="property-label"><g:message code="informacionPago.numProveedor.label" default="Num Proveedor" /></span>
					
						<span class="property-value" aria-labelledby="numProveedor-label"><g:fieldValue bean="${informacionPagoInstance}" field="numProveedor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.numeroCuenta}">
				<li class="fieldcontain">
					<span id="numeroCuenta-label" class="property-label"><g:message code="informacionPago.numeroCuenta.label" default="Numero Cuenta" /></span>
					
						<span class="property-value" aria-labelledby="numeroCuenta-label"><g:fieldValue bean="${informacionPagoInstance}" field="numeroCuenta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.ordenCompra}">
				<li class="fieldcontain">
					<span id="ordenCompra-label" class="property-label"><g:message code="informacionPago.ordenCompra.label" default="Orden Compra" /></span>
					
						<span class="property-value" aria-labelledby="ordenCompra-label"><g:fieldValue bean="${informacionPagoInstance}" field="ordenCompra"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${informacionPagoInstance?.posCompra}">
				<li class="fieldcontain">
					<span id="posCompra-label" class="property-label"><g:message code="informacionPago.posCompra.label" default="Pos Compra" /></span>
					
						<span class="property-value" aria-labelledby="posCompra-label"><g:fieldValue bean="${informacionPagoInstance}" field="posCompra"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${informacionPagoInstance?.id}" />
					<g:link class="edit" action="edit" id="${informacionPagoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
