package com.dsindigo.addendasantander

class InformacionPago {

    static constraints = {
		email(nullable:false, blank:false, email:true)
    }
	
	static belongsTo = [comprobante:Comprobante]
	
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
