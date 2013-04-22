package com.dsindigo.addendasantander

class InformacionPago {

    static constraints = {
		numProveedor(nullable:false, blank:false)
		ordenCompra(nullable:false, blank:false)
		posCompra(nullable:false, blank:false)
		nombreBeneficiario(nullable:false, blank:false)
		institucionReceptora(nullable:false, blank:false)
		numeroCuenta(nullable:false, blank:false)
		cuentaContable(nullable:false, blank:false)
		claveDeposito(nullable:false, blank:false)
		email(nullable:false, blank:false, email:true)
		concepto(nullable:false, blank:false)
    }
	
	int numProveedor
	String ordenCompra
	String posCompra
	String nombreBeneficiario
	String institucionReceptora
	String numeroCuenta
	String cuentaContable
	String claveDeposito
	String email
	String codigoISOMoneda
	String concepto
}
