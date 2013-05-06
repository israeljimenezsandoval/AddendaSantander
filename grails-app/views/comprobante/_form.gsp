<%@ page import="com.dsindigo.addendasantander.Comprobante"%>


<div id="agregarInfPago">
	<div class="alert alert-info">
		<label>Informacion de Pago</label> <a class="btn btn-sucess"
			onclick="hideForm(true, 'formInfPago')"><i class="icon-plus"></i></a>
		<a class="btn btn-sucess" onclick="hideForm(false, 'formInfPago')"><i
			class="icon-minus"></i></a>
	</div>
	<div class="form-actions" id="formInfPago" style="display: none">
		<div
			class="fieldcontain ${hasErrors(bean: comprobanteInstance, field: 'informacionPago', 'error')} ">

			<label for="informacionPago"> </label> <input type="button"
				rel="nofollow" class="actionButton" href="javascript:void(0)"
				onclick="dsIndigo.ajaxPostReplace('${formId}', 
				'${elementToReplace}', 
				'${createLink(action: 'addInformacionPago')}')"
				value="${message(code: 'default.addNew.label', default:'Agregar nodo') }" />
			<g:each in="${comprobanteInstance?.informacionPago?}" var="a"
				status="i">
				<div class="alert alert-warning">
					<label>Información de pago: ${a?.email}</label> <a
						class="btn btn-sucess"
						onclick="hideForm(true, 'infPagoDiv${i}')"><i
						class="icon-plus"></i></a> <a class="btn btn-sucess"
						onclick="hideForm(false, 'infPagoDiv${i}')"><i
						class="icon-minus"></i></a>
					<div id="infPagoDiv${i}">
						<g:set var="infPagoReference" value="informacionPago[${i}]." />
						<g:hiddenField name="informacionPago[${i}].id" value="${a?.id}" />
						<g:render template="/informacionPago/form"
							model="[informacionPagoInstance: a]" />
					</div>
				</div>
			</g:each>
		</div>
	</div>
</div>

<div id="agregarBasilea">
	<div class="alert alert-info">
		<label>Basilea</label> <a class="btn btn-sucess"
			onclick="hideForm(true, 'formBasilea')"><i class="icon-plus"></i></a>
		<a class="btn btn-sucess"
			onclick="hideForm(false, 'formBasilea')"> <i
			class="icon-minus"></i></a>
	</div>
	<div class="form-actions" id="formBasilea" style="display: none">
		<g:formRemote name="formBasilea" on404="alert('not found!')"
			url="[controller: 'comprobante', action: 'validateInput']">
			<g:render template="/basilea/form" />
			<fieldset class="buttons">
				<g:actionSubmit name="basilea" value="Agregar" />
			</fieldset>
		</g:formRemote>
	</div>
</div>

<div id="agregarInmuebles">
	<div class="alert alert-info">
		<label>Inmuebles</label> <a class="btn btn-sucess"
			onclick="hideForm(true, 'formInmuebles')"><i class="icon-plus"></i></a>
		<a class="btn btn-sucess" onclick="hideForm(false, 'formInmuebles')">
			<i class="icon-minus"></i>
		</a>
	</div>
	<div class="form-actions" id="formInmuebles" style="display: none">
		<g:formRemote name="formInmuebles" on404="alert('not found!')"
			url="[controller: 'comprobante', action: 'validateInput']">
			<g:render template="/inmuebles/form" />
			<fieldset class="buttons">
				<g:actionSubmit name="inmuebles" value="Agregar" />
			</fieldset>
		</g:formRemote>
	</div>
</div>

<g:hiddenField name="formId" value="${formId}" />
<g:hiddenField name="elementToReplace" value="${elementToReplace}" />