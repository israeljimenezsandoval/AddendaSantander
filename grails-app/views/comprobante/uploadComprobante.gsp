<!doctype html>
<html>
<head>
<meta name="layout" content="bootstrap">
<g:set var="entityName"
	value="${message(code: 'comprobante.label', default: 'Comprobante')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div class="row-fluid">
		<div class="span3">
			<div class="well">
				<ul class="nav nav-list">
					<li class="nav-header">
						${entityName}
					</li>
					<li><g:link class="list" action="list">
							<i class="icon-list"></i>
							<g:message code="default.list.label" args="[entityName]" />
						</g:link></li>
					<li class="active"><g:link class="create" action="uploadComprobante">
							<i class="icon-plus icon-white"></i>
							<g:message code="default.create.label" args="[entityName]" />
						</g:link></li>
				</ul>
			</div>
		</div>
		<div class="span9">
			<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">
					${flash.message}
				</bootstrap:alert>
			</g:if>

			<div id="create-comprobante" class="content scaffold-create"
				role="main">
				<g:uploadForm action="create">
					<fieldset>
						<legend>Comprobante</legend>
						<div class="control-group">
							<label class="control-label">Archivo</label>
							<div class="controls">
								<input type="file" name="fileComprobante" placeholder="Archivo	">
							</div>
						</div>
						<button type="submit" class="btn">Submit</button>
					</fieldset>
				</g:uploadForm>
			</div>
		</div>
	</div>
</body>
</html>
