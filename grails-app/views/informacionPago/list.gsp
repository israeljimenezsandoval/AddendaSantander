
<%@ page import="com.dsindigo.addendasantander.InformacionPago" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'informacionPago.label', default: 'InformacionPago')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-informacionPago" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-informacionPago" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numProveedor" title="${message(code: 'informacionPago.numProveedor.label', default: 'Num Proveedor')}" />
					
						<g:sortableColumn property="ordenCompra" title="${message(code: 'informacionPago.ordenCompra.label', default: 'Orden Compra')}" />
					
						<g:sortableColumn property="posCompra" title="${message(code: 'informacionPago.posCompra.label', default: 'Pos Compra')}" />
					
						<g:sortableColumn property="nombreBeneficiario" title="${message(code: 'informacionPago.nombreBeneficiario.label', default: 'Nombre Beneficiario')}" />
					
						<g:sortableColumn property="institucionReceptora" title="${message(code: 'informacionPago.institucionReceptora.label', default: 'Institucion Receptora')}" />
					
						<g:sortableColumn property="numeroCuenta" title="${message(code: 'informacionPago.numeroCuenta.label', default: 'Numero Cuenta')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${informacionPagoInstanceList}" status="i" var="informacionPagoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${informacionPagoInstance.id}">${fieldValue(bean: informacionPagoInstance, field: "numProveedor")}</g:link></td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "ordenCompra")}</td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "posCompra")}</td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "nombreBeneficiario")}</td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "institucionReceptora")}</td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "numeroCuenta")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${informacionPagoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
