
<%@ page import="com.dsindigo.addendasantander.InformacionEmision" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'informacionEmision.label', default: 'InformacionEmision')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-informacionEmision" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-informacionEmision" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="centroCostos" title="${message(code: 'informacionEmision.centroCostos.label', default: 'Centro Costos')}" />
					
						<g:sortableColumn property="claveSantander" title="${message(code: 'informacionEmision.claveSantander.label', default: 'Clave Santander')}" />
					
						<g:sortableColumn property="codigoCliente" title="${message(code: 'informacionEmision.codigoCliente.label', default: 'Codigo Cliente')}" />
					
						<g:sortableColumn property="contrato" title="${message(code: 'informacionEmision.contrato.label', default: 'Contrato')}" />
					
						<g:sortableColumn property="folioInterno" title="${message(code: 'informacionEmision.folioInterno.label', default: 'Folio Interno')}" />
					
						<g:sortableColumn property="periodo" title="${message(code: 'informacionEmision.periodo.label', default: 'Periodo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${informacionEmisionInstanceList}" status="i" var="informacionEmisionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${informacionEmisionInstance.id}">${fieldValue(bean: informacionEmisionInstance, field: "centroCostos")}</g:link></td>
					
						<td>${fieldValue(bean: informacionEmisionInstance, field: "claveSantander")}</td>
					
						<td>${fieldValue(bean: informacionEmisionInstance, field: "codigoCliente")}</td>
					
						<td>${fieldValue(bean: informacionEmisionInstance, field: "contrato")}</td>
					
						<td>${fieldValue(bean: informacionEmisionInstance, field: "folioInterno")}</td>
					
						<td>${fieldValue(bean: informacionEmisionInstance, field: "periodo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${informacionEmisionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
