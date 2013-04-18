
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
					
						<g:sortableColumn property="claveDeposito" title="${message(code: 'informacionPago.claveDeposito.label', default: 'Clave Deposito')}" />
					
						<g:sortableColumn property="codigoISOMoneda" title="${message(code: 'informacionPago.codigoISOMoneda.label', default: 'Codigo ISOM oneda')}" />
					
						<g:sortableColumn property="concepto" title="${message(code: 'informacionPago.concepto.label', default: 'Concepto')}" />
					
						<g:sortableColumn property="cuentaContable" title="${message(code: 'informacionPago.cuentaContable.label', default: 'Cuenta Contable')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'informacionPago.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="institucionReceptora" title="${message(code: 'informacionPago.institucionReceptora.label', default: 'Institucion Receptora')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${informacionPagoInstanceList}" status="i" var="informacionPagoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${informacionPagoInstance.id}">${fieldValue(bean: informacionPagoInstance, field: "claveDeposito")}</g:link></td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "codigoISOMoneda")}</td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "concepto")}</td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "cuentaContable")}</td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: informacionPagoInstance, field: "institucionReceptora")}</td>
					
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
