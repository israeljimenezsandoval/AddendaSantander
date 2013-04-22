
<%@ page import="com.dsindigo.addendasantander.Basilea" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'basilea.label', default: 'Basilea')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-basilea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-basilea" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="numContrato" title="${message(code: 'basilea.numContrato.label', default: 'Num Contrato')}" />
					
						<g:sortableColumn property="origenGasto" title="${message(code: 'basilea.origenGasto.label', default: 'Origen Gasto')}" />
					
						<g:sortableColumn property="tipoGasto" title="${message(code: 'basilea.tipoGasto.label', default: 'Tipo Gasto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${basileaInstanceList}" status="i" var="basileaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${basileaInstance.id}">${fieldValue(bean: basileaInstance, field: "numContrato")}</g:link></td>
					
						<td>${fieldValue(bean: basileaInstance, field: "origenGasto")}</td>
					
						<td>${fieldValue(bean: basileaInstance, field: "tipoGasto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${basileaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
