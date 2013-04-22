<%@ page import="com.dsindigo.addendasantander.InformacionEmision" %>



<div class="fieldcontain ${hasErrors(bean: informacionEmisionInstance, field: 'centroCostos', 'error')} ">
	<label for="centroCostos">
		<g:message code="informacionEmision.centroCostos.label" default="Centro Costos" />
		
	</label>
	<g:textField name="centroCostos" value="${informacionEmisionInstance?.centroCostos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionEmisionInstance, field: 'claveSantander', 'error')} ">
	<label for="claveSantander">
		<g:message code="informacionEmision.claveSantander.label" default="Clave Santander" />
		
	</label>
	<g:textField name="claveSantander" value="${informacionEmisionInstance?.claveSantander}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionEmisionInstance, field: 'codigoCliente', 'error')} ">
	<label for="codigoCliente">
		<g:message code="informacionEmision.codigoCliente.label" default="Codigo Cliente" />
		
	</label>
	<g:textField name="codigoCliente" value="${informacionEmisionInstance?.codigoCliente}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionEmisionInstance, field: 'contrato', 'error')} ">
	<label for="contrato">
		<g:message code="informacionEmision.contrato.label" default="Contrato" />
		
	</label>
	<g:textField name="contrato" value="${informacionEmisionInstance?.contrato}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionEmisionInstance, field: 'factorajes', 'error')} ">
	<label for="factorajes">
		<g:message code="informacionEmision.factorajes.label" default="Factorajes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${informacionEmisionInstance?.factorajes?}" var="f">
    <li><g:link controller="informacionFactoraje" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="informacionFactoraje" action="create" params="['informacionEmision.id': informacionEmisionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'informacionFactoraje.label', default: 'InformacionFactoraje')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: informacionEmisionInstance, field: 'folioInterno', 'error')} ">
	<label for="folioInterno">
		<g:message code="informacionEmision.folioInterno.label" default="Folio Interno" />
		
	</label>
	<g:textField name="folioInterno" value="${informacionEmisionInstance?.folioInterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionEmisionInstance, field: 'periodo', 'error')} ">
	<label for="periodo">
		<g:message code="informacionEmision.periodo.label" default="Periodo" />
		
	</label>
	<g:textField name="periodo" value="${informacionEmisionInstance?.periodo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionEmisionInstance, field: 'tFactoraje', 'error')} required">
	<label for="tFactoraje">
		<g:message code="informacionEmision.tFactoraje.label" default="TF actoraje" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tFactoraje" name="tFactoraje.id" from="${com.dsindigo.addendasantander.InformacionFactoraje.list()}" optionKey="id" required="" value="${informacionEmisionInstance?.tFactoraje?.id}" class="many-to-one"/>
</div>

