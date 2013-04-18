<%@ page import="com.dsindigo.addendasantander.InformacionFactoraje" %>



<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'aforo', 'error')} ">
	<label for="aforo">
		<g:message code="informacionFactoraje.aforo.label" default="Aforo" />
		
	</label>
	<g:textField name="aforo" value="${informacionFactorajeInstance?.aforo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'deudorProveedor', 'error')} ">
	<label for="deudorProveedor">
		<g:message code="informacionFactoraje.deudorProveedor.label" default="Deudor Proveedor" />
		
	</label>
	<g:textField name="deudorProveedor" value="${informacionFactorajeInstance?.deudorProveedor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'fechaVencimiento', 'error')} required">
	<label for="fechaVencimiento">
		<g:message code="informacionFactoraje.fechaVencimiento.label" default="Fecha Vencimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaVencimiento" precision="day"  value="${informacionFactorajeInstance?.fechaVencimiento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'importeDescuento', 'error')} ">
	<label for="importeDescuento">
		<g:message code="informacionFactoraje.importeDescuento.label" default="Importe Descuento" />
		
	</label>
	<g:textField name="importeDescuento" value="${informacionFactorajeInstance?.importeDescuento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'numeroDocumento', 'error')} required">
	<label for="numeroDocumento">
		<g:message code="informacionFactoraje.numeroDocumento.label" default="Numero Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numeroDocumento" required="" value="${fieldValue(bean: informacionFactorajeInstance, field: 'numeroDocumento')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'plazo', 'error')} required">
	<label for="plazo">
		<g:message code="informacionFactoraje.plazo.label" default="Plazo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="plazo" required="" value="${fieldValue(bean: informacionFactorajeInstance, field: 'plazo')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'precioBase', 'error')} ">
	<label for="precioBase">
		<g:message code="informacionFactoraje.precioBase.label" default="Precio Base" />
		
	</label>
	<g:textField name="precioBase" value="${informacionFactorajeInstance?.precioBase}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'precioFactoraje', 'error')} ">
	<label for="precioFactoraje">
		<g:message code="informacionFactoraje.precioFactoraje.label" default="Precio Factoraje" />
		
	</label>
	<g:textField name="precioFactoraje" value="${informacionFactorajeInstance?.precioFactoraje}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'tasaDescuento', 'error')} ">
	<label for="tasaDescuento">
		<g:message code="informacionFactoraje.tasaDescuento.label" default="Tasa Descuento" />
		
	</label>
	<g:textField name="tasaDescuento" value="${informacionFactorajeInstance?.tasaDescuento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'tipoDocumento', 'error')} ">
	<label for="tipoDocumento">
		<g:message code="informacionFactoraje.tipoDocumento.label" default="Tipo Documento" />
		
	</label>
	<g:textField name="tipoDocumento" value="${informacionFactorajeInstance?.tipoDocumento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'valorNominal', 'error')} ">
	<label for="valorNominal">
		<g:message code="informacionFactoraje.valorNominal.label" default="Valor Nominal" />
		
	</label>
	<g:textField name="valorNominal" value="${informacionFactorajeInstance?.valorNominal}"/>
</div>

