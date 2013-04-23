<%@ page import="com.dsindigo.addendasantander.InformacionPago" %>



<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'numProveedor', 'error')} required">
	<label for="numProveedor">
		<g:message code="informacionPago.numProveedor.label" default="Num Proveedor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numProveedor" required="" value="${fieldValue(bean: informacionPagoInstance, field: 'numProveedor')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'ordenCompra', 'error')} required">
	<label for="ordenCompra">
		<g:message code="informacionPago.ordenCompra.label" default="Orden Compra" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ordenCompra" required="" value="${informacionPagoInstance?.ordenCompra}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'posCompra', 'error')} required">
	<label for="posCompra">
		<g:message code="informacionPago.posCompra.label" default="Pos Compra" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="posCompra" required="" value="${informacionPagoInstance?.posCompra}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'nombreBeneficiario', 'error')} required">
	<label for="nombreBeneficiario">
		<g:message code="informacionPago.nombreBeneficiario.label" default="Nombre Beneficiario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreBeneficiario" required="" value="${informacionPagoInstance?.nombreBeneficiario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'institucionReceptora', 'error')} required">
	<label for="institucionReceptora">
		<g:message code="informacionPago.institucionReceptora.label" default="Institucion Receptora" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="institucionReceptora" required="" value="${informacionPagoInstance?.institucionReceptora}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'numeroCuenta', 'error')} required">
	<label for="numeroCuenta">
		<g:message code="informacionPago.numeroCuenta.label" default="Numero Cuenta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroCuenta" required="" value="${informacionPagoInstance?.numeroCuenta}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'cuentaContable', 'error')} required">
	<label for="cuentaContable">
		<g:message code="informacionPago.cuentaContable.label" default="Cuenta Contable" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cuentaContable" required="" value="${informacionPagoInstance?.cuentaContable}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'claveDeposito', 'error')} required">
	<label for="claveDeposito">
		<g:message code="informacionPago.claveDeposito.label" default="Clave Deposito" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="claveDeposito" required="" value="${informacionPagoInstance?.claveDeposito}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="informacionPago.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${informacionPagoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'concepto', 'error')} required">
	<label for="concepto">
		<g:message code="informacionPago.concepto.label" default="Concepto" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="concepto" required="" value="${informacionPagoInstance?.concepto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'codigoISOMoneda', 'error')} ">
	<label for="codigoISOMoneda">
		<g:message code="informacionPago.codigoISOMoneda.label" default="Codigo ISOM oneda" />
		
	</label>
	<g:textField name="codigoISOMoneda" value="${informacionPagoInstance?.codigoISOMoneda}"/>
</div>

