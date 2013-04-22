
<%@ page import="com.dsindigo.addendasantander.InformacionFactoraje" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'informacionFactoraje.label', default: 'InformacionFactoraje')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-informacionFactoraje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-informacionFactoraje" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="deudorProveedor" title="${message(code: 'informacionFactoraje.deudorProveedor.label', default: 'Deudor Proveedor')}" />
					
						<g:sortableColumn property="tipoDocumento" title="${message(code: 'informacionFactoraje.tipoDocumento.label', default: 'Tipo Documento')}" />
					
						<g:sortableColumn property="numeroDocumento" title="${message(code: 'informacionFactoraje.numeroDocumento.label', default: 'Numero Documento')}" />
					
						<g:sortableColumn property="plazo" title="${message(code: 'informacionFactoraje.plazo.label', default: 'Plazo')}" />
					
						<g:sortableColumn property="valorNominal" title="${message(code: 'informacionFactoraje.valorNominal.label', default: 'Valor Nominal')}" />
					
						<g:sortableColumn property="aforo" title="${message(code: 'informacionFactoraje.aforo.label', default: 'Aforo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${informacionFactorajeInstanceList}" status="i" var="informacionFactorajeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${informacionFactorajeInstance.id}">${fieldValue(bean: informacionFactorajeInstance, field: "deudorProveedor")}</g:link></td>
					
						<td>${fieldValue(bean: informacionFactorajeInstance, field: "tipoDocumento")}</td>
					
						<td>${fieldValue(bean: informacionFactorajeInstance, field: "numeroDocumento")}</td>
					
						<td>${fieldValue(bean: informacionFactorajeInstance, field: "plazo")}</td>
					
						<td>${fieldValue(bean: informacionFactorajeInstance, field: "valorNominal")}</td>
					
						<td>${fieldValue(bean: informacionFactorajeInstance, field: "aforo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${informacionFactorajeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
