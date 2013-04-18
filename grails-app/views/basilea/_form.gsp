<%@ page import="com.dsindigo.addendasantander.Basilea" %>



<div class="fieldcontain ${hasErrors(bean: basileaInstance, field: 'numContrato', 'error')} ">
	<label for="numContrato">
		<g:message code="basilea.numContrato.label" default="Num Contrato" />
		
	</label>
	<g:textField name="numContrato" value="${basileaInstance?.numContrato}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basileaInstance, field: 'origenGasto', 'error')} ">
	<label for="origenGasto">
		<g:message code="basilea.origenGasto.label" default="Origen Gasto" />
		
	</label>
	<g:textField name="origenGasto" value="${basileaInstance?.origenGasto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: basileaInstance, field: 'tipoGasto', 'error')} ">
	<label for="tipoGasto">
		<g:message code="basilea.tipoGasto.label" default="Tipo Gasto" />
		
	</label>
	<g:textField name="tipoGasto" value="${basileaInstance?.tipoGasto}"/>
</div>

