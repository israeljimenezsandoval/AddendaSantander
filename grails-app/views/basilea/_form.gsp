<%@ page import="com.dsindigo.addendasantander.Basilea" %>



<div class="fieldcontain ${hasErrors(bean: basileaInstance, field: 'numContrato', 'error')} required">
	<label for="numContrato">
		<g:message code="basilea.numContrato.label" default="Num Contrato" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numContrato" required="" value="${basileaInstance?.numContrato}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basileaInstance, field: 'origenGasto', 'error')} required">
	<label for="origenGasto">
		<g:message code="basilea.origenGasto.label" default="Origen Gasto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="origenGasto" required="" value="${basileaInstance?.origenGasto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basileaInstance, field: 'tipoGasto', 'error')} required">
	<label for="tipoGasto">
		<g:message code="basilea.tipoGasto.label" default="Tipo Gasto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoGasto" required="" value="${basileaInstance?.tipoGasto}"/>
</div>

