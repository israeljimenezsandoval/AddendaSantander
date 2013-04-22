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
			function updateInAddeda(idElement, idElementHide){
				debugger
				if(idElement == 'pagoIn')
					$('#generaAddenda').css('display', 'block');
				$('#elemntsInAddena').css('display', 'block');
				$('#' + idElement).css('display', 'block');
				$('#' + idElementHide).css('display', 'none');
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
				<div class="well" id="elemntsInAddena" style="display:none">
					<div class="alert alert-info" id="pagoIn" style="display:none">
						<label>Informacion de pago</label>
					</div>
					<div class="alert alert-info" id="emisionIn" style="display:none">
						<label>Informacion de emision</label>
					</div>
					<div class="alert alert-info" id="inmueblesIn" style="display:none">
						<label>Inmuebles</label>
					</div>
					<div class="alert alert-info" id="basileaIn" style="display:none">
						<label>Basilea</label>
					</div>
					<div id="generaAddenda" style="display:none">
						<fieldset class="buttons">
							<g:link action="addAddenda" class="btn btn-primary" id="1">Agregar Addenda</g:link>
						</fieldset>
					</div>
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
					
					<div id="agregarInfPago">
									<div class="alert alert-info">
										<label>Informacion de Pago</label>
										<a class="btn btn-sucess" onclick="hideElement(true, 'formInfPago')"><i class="icon-plus"></i></a>
										<a class="btn btn-sucess" onclick="hideElement(false, 'formInfPago')"><i class="icon-minus"></i></a>
									</div>
									<div class="form-actions" id="formInfPago" style="display:none">
										<g:formRemote name="formEmisor" on404="alert('not found!')"
											url="[controller: 'comprobante', action: 'validateInput']"
											onComplete="updateInAddeda('pagoIn', 'agregarInfPago')"
											>
											<g:render template="/informacionPago/form"/>
											<fieldset class="buttons">
												<g:actionSubmit name="infPago" value="Agregar"/>
											</fieldset>
										</g:formRemote >
									</div>
								</div>
							
					<div id="agregarEmisor">
									<div class="alert alert-info">
										<label>Informacion de Emisor</label>
										<a class="btn btn-sucess" onclick="hideElement(true, 'formInfEmision')"><i class="icon-plus"></i></a>
										<a class="btn btn-sucess" onclick="hideElement(false, 'formInfEmision')"><i class="icon-minus"></i></a>
									</div>
									<div class="form-actions" id="formInfEmision" style="display:none">
										<g:formRemote name="formEmisor" on404="alert('not found!')"
											url="[controller: 'comprobante', action: 'validateInput']"
											onComplete="updateInAddeda('emisionIn', 'agregarEmisor')"
											>
											<g:render template="/informacionEmision/form"/>
											<fieldset class="buttons">
												<g:actionSubmit name="emisor" value="Agregar"/>
											</fieldset>
										</g:formRemote >
									</div>
								</div>
							
					<div id="agregarInmuebles">
									<div class="alert alert-info">
										<label>Inmuebles</label>
										<a class="btn btn-sucess" onclick="hideElement(true, 'formInmuebles')"><i class="icon-plus"></i></a>
										<a class="btn btn-sucess" onclick="hideElement(false, 'formInmuebles')"><i class="icon-minus"></i></a>
									</div>
									<div class="form-actions" id="formInmuebles" style="display:none">
										<g:formRemote name="formInmuebles" on404="alert('not found!')"
											url="[controller: 'comprobante', action: 'validateInput']"
											onComplete="updateInAddeda('inmueblesIn', 'agregarInmuebles')"
											>
											<g:render template="/inmuebles/form"/>
											<fieldset class="buttons">
												<g:actionSubmit name="inmuebles" value="Agregar"/>
											</fieldset>
										</g:formRemote >
									</div>
								</div>
							
					<div id="agregarBasilea">
									<div class="alert alert-info">
										<label>Basilea</label>
										<a class="btn btn-sucess" onclick="hideElement(true, 'formBasilea')"><i class="icon-plus"></i></a>
										<a class="btn btn-sucess" onclick="hideElement(false, 'formBasilea')"><i class="icon-minus"></i></a>
									</div>
									<div class="form-actions" id="formBasilea"  style="display:none">
										<g:formRemote name="formBasilea" on404="alert('not found!')"
											url="[controller: 'comprobante', action: 'validateInput']"
											onComplete="updateInAddeda('basileaIn', 'agregarBasilea')"
											>
											<g:render template="/basilea/form" model="" />
											<fieldset class="buttons">
												<g:actionSubmit name="basilea" value="Agregar"/>
											</fieldset>
										</g:formRemote >
									</div>
								</div>
						
				</fieldset>
				
			</div>
<!-- update="[success:'messageLists', failure:'messageLists']" -->
		</div>
	</body>
</html>
