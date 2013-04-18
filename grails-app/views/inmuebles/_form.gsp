<%@ page import="com.dsindigo.addendasantander.Inmuebles" %>



<div class="fieldcontain ${hasErrors(bean: inmueblesInstance, field: 'fechaVencimiento', 'error')} required">
	<label for="fechaVencimiento">
		<g:message code="inmuebles.fechaVencimiento.label" default="Fecha Vencimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaVencimiento" precision="day"  value="${inmueblesInstance?.fechaVencimiento}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: inmueblesInstance, field: 'numContrato', 'error')} ">
	<label for="numContrato">
		<g:message code="inmuebles.numContrato.label" default="Num Contrato" />
		
	</label>
	<g:textField name="numContrato" value="${inmueblesInstance?.numContrato}"/>
</div>

