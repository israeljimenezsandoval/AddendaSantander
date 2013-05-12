<%@ page import="com.dsindigo.addendasantander.InformacionFactoraje" %>



<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'deudorProveedor', 'error')} required">
	<label for="deudorProveedor">
		<g:message code="informacionFactoraje.deudorProveedor.label" default="Deudor Proveedor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="deudorProveedor" required="" value="${informacionFactorajeInstance?.deudorProveedor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'tipoDocumento', 'error')} required">
	<label for="tipoDocumento">
		<g:message code="informacionFactoraje.tipoDocumento.label" default="Tipo Documento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoDocumento" required="" value="${informacionFactorajeInstance?.tipoDocumento}"/>
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

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'valorNominal', 'error')} required">
	<label for="valorNominal">
		<g:message code="informacionFactoraje.valorNominal.label" default="Valor Nominal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="valorNominal" required="" value="${informacionFactorajeInstance?.valorNominal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'aforo', 'error')} required">
	<label for="aforo">
		<g:message code="informacionFactoraje.aforo.label" default="Aforo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="aforo" required="" value="${informacionFactorajeInstance?.aforo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'precioBase', 'error')} required">
	<label for="precioBase">
		<g:message code="informacionFactoraje.precioBase.label" default="Precio Base" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="precioBase" required="" value="${informacionFactorajeInstance?.precioBase}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'tasaDescuento', 'error')} required">
	<label for="tasaDescuento">
		<g:message code="informacionFactoraje.tasaDescuento.label" default="Tasa Descuento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tasaDescuento" required="" value="${informacionFactorajeInstance?.tasaDescuento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'precioFactoraje', 'error')} required">
	<label for="precioFactoraje">
		<g:message code="informacionFactoraje.precioFactoraje.label" default="Precio Factoraje" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="precioFactoraje" required="" value="${informacionFactorajeInstance?.precioFactoraje}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'importeDescuento', 'error')} required">
	<label for="importeDescuento">
		<g:message code="informacionFactoraje.importeDescuento.label" default="Importe Descuento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="importeDescuento" required="" value="${informacionFactorajeInstance?.importeDescuento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionFactorajeInstance, field: 'fechaVencimiento', 'error')} required">
	<label for="fechaVencimiento">
		<g:message code="informacionFactoraje.fechaVencimiento.label" default="Fecha Vencimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaVencimiento" precision="day"  value="${informacionFactorajeInstance?.fechaVencimiento}"  />
</div>

