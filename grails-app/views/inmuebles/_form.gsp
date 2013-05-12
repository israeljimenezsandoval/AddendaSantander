<%@ page import="com.dsindigo.addendasantander.Inmuebles" %>



<div class="fieldcontain ${hasErrors(bean: inmueblesInstance, field: 'numContrato', 'error')} required">
	<label for="numContrato">
		<g:message code="inmuebles.numContrato.label" default="Num Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numContrato" required="" value="${inmueblesInstance?.numContrato}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inmueblesInstance, field: 'fechaVencimiento', 'error')} required">
	<label for="fechaVencimiento">
		<g:message code="inmuebles.fechaVencimiento.label" default="Fecha Vencimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaVencimiento" precision="day"  value="${inmueblesInstance?.fechaVencimiento}"  />
</div>

