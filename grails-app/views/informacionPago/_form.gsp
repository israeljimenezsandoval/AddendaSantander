<%@ page import="com.dsindigo.addendasantander.InformacionPago" %>



<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'claveDeposito', 'error')} ">
	<label for="claveDeposito">
		<g:message code="informacionPago.claveDeposito.label" default="Clave Deposito" />
		
	</label>
	<g:textField name="claveDeposito" value="${informacionPagoInstance?.claveDeposito}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'codigoISOMoneda', 'error')} ">
	<label for="codigoISOMoneda">
		<g:message code="informacionPago.codigoISOMoneda.label" default="Codigo ISOM oneda" />
		
	</label>
	<g:textField name="codigoISOMoneda" value="${informacionPagoInstance?.codigoISOMoneda}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'concepto', 'error')} ">
	<label for="concepto">
		<g:message code="informacionPago.concepto.label" default="Concepto" />
		
	</label>
	<g:textField name="concepto" value="${informacionPagoInstance?.concepto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'cuentaContable', 'error')} ">
	<label for="cuentaContable">
		<g:message code="informacionPago.cuentaContable.label" default="Cuenta Contable" />
		
	</label>
	<g:textField name="cuentaContable" value="${informacionPagoInstance?.cuentaContable}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="informacionPago.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${informacionPagoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'institucionReceptora', 'error')} ">
	<label for="institucionReceptora">
		<g:message code="informacionPago.institucionReceptora.label" default="Institucion Receptora" />
		
	</label>
	<g:textField name="institucionReceptora" value="${informacionPagoInstance?.institucionReceptora}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'nombreBeneficiario', 'error')} ">
	<label for="nombreBeneficiario">
		<g:message code="informacionPago.nombreBeneficiario.label" default="Nombre Beneficiario" />
		
	</label>
	<g:textField name="nombreBeneficiario" value="${informacionPagoInstance?.nombreBeneficiario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'numProveedor', 'error')} required">
	<label for="numProveedor">
		<g:message code="informacionPago.numProveedor.label" default="Num Proveedor" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numProveedor" required="" value="${fieldValue(bean: informacionPagoInstance, field: 'numProveedor')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'numeroCuenta', 'error')} ">
	<label for="numeroCuenta">
		<g:message code="informacionPago.numeroCuenta.label" default="Numero Cuenta" />
		
	</label>
	<g:textField name="numeroCuenta" value="${informacionPagoInstance?.numeroCuenta}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'ordenCompra', 'error')} ">
	<label for="ordenCompra">
		<g:message code="informacionPago.ordenCompra.label" default="Orden Compra" />
		
	</label>
	<g:textField name="ordenCompra" value="${informacionPagoInstance?.ordenCompra}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: informacionPagoInstance, field: 'posCompra', 'error')} ">
	<label for="posCompra">
		<g:message code="informacionPago.posCompra.label" default="Pos Compra" />
		
	</label>
	<g:textField name="posCompra" value="${informacionPagoInstance?.posCompra}"/>
</div>

