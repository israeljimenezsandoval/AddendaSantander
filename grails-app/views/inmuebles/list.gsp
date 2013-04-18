
<%@ page import="com.dsindigo.addendasantander.Inmuebles" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inmuebles.label', default: 'Inmuebles')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inmuebles" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inmuebles" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="fechaVencimiento" title="${message(code: 'inmuebles.fechaVencimiento.label', default: 'Fecha Vencimiento')}" />
					
						<g:sortableColumn property="numContrato" title="${message(code: 'inmuebles.numContrato.label', default: 'Num Contrato')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inmueblesInstanceList}" status="i" var="inmueblesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inmueblesInstance.id}">${fieldValue(bean: inmueblesInstance, field: "fechaVencimiento")}</g:link></td>
					
						<td>${fieldValue(bean: inmueblesInstance, field: "numContrato")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inmueblesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
