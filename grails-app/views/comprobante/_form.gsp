<%@ page import="com.dsindigo.addendasantander.Comprobante" %>



<div class="fieldcontain ${hasErrors(bean: comprobanteInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="comprobante.name.label" default="Name"/>

    </label>
    <g:textField name="name" value="${comprobanteInstance?.name}"/>
</div>

