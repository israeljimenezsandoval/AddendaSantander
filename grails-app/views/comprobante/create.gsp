<%@ page import="com.dsindigo.addendasantander.Comprobante" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'comprobante.label', default: 'Comprobante')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<g:javascript>
			function hideElement(hide, idForm){
				if(hide)
					$('#' + idForm).css('display', 'block');
				else
					$('#' + idForm).css('display', 'none');
			}
		</g:javascript>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li class="active">
							<g:link class="create" action="create">
								<i class="icon-plus icon-white"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="span9">

				<div class="page-header">
					<h1><g:message code="default.create.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<g:hasErrors bean="${comprobanteInstance}">
				<bootstrap:alert class="alert-error">
				<ul>
					<g:eachError bean="${comprobanteInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</bootstrap:alert>
				</g:hasErrors>

				<fieldset>
					<g:form class="form-horizontal" action="create" >
						<fieldset>
						
							<div>
								<div class="alert alert-info">
									<label>
										Informacion de Pago
									</label>
									<a class="btn btn-sucess" onclick="hideElement(true, 'formInfPago')"><i class="icon-plus"></i></a>
									<a class="btn btn-sucess" onclick="hideElement(false, 'formInfPago')"><i class="icon-minus"></i></a>
								</div>
								<div class="form-actions" id="formInfPago" style="display:none">
									<g:render template="/informacionPago/create" model="" />
								</div>
							</div>
							
							<div>
								<div class="alert alert-info">
									<label>
										Informacion de Emisor
									</label>
									<a class="btn btn-sucess" onclick="hideElement(true, 'formInfEmision')"><i class="icon-plus"></i></a>
									<a class="btn btn-sucess" onclick="hideElement(false, 'formInfEmision')"><i class="icon-minus"></i></a>
								</div>
								<div class="form-actions" id="formInfEmision" style="display:none">
									<g:render template="/informacionEmision/form" model="" />
								</div>
							</div>
							
							<div>
								<div class="alert alert-info">
									<label>
										Inmuebles
									</label>
									<a class="btn btn-sucess" onclick="hideElement(true, 'formInmuebles')"><i class="icon-plus"></i></a>
									<a class="btn btn-sucess" onclick="hideElement(false, 'formInmuebles')"><i class="icon-minus"></i></a>
								</div>
								<div class="form-actions" id="formInmuebles" style="display:none">
									<g:render template="/inmuebles/form" model="" />
								</div>
							</div>
							
							<div>
								<div class="alert alert-info">
									<label>
										Basilea
									</label>
									<a class="btn btn-sucess" onclick="hideElement(true, 'formBasilea')"><i class="icon-plus"></i></a>
									<a class="btn btn-sucess" onclick="hideElement(false, 'formBasilea')"><i class="icon-minus"></i></a>
								</div>
								<div class="form-actions" id="formBasilea" style="display:none">
									<g:render template="/basilea/form" model="" />
								</div>
							</div>
							
						</fieldset>
					</g:form>
				</fieldset>
				
			</div>

		</div>
	</body>
</html>
