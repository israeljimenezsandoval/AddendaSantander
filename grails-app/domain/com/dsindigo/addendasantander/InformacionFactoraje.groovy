package com.dsindigo.addendasantander

class InformacionFactoraje implements Serializable {

    static constraints = {
		deudorProveedor(nullable:false, blank:false)
		tipoDocumento(nullable:false, blank:false)
		numeroDocumento(nullable:false, blank:false)
		plazo(nullable:false, blank:false)
		valorNominal(nullable:false, blank:false)
		aforo(nullable:false, blank:false)
		precioBase(nullable:false, blank:false)
		tasaDescuento(nullable:false, blank:false)
		precioFactoraje(nullable:false, blank:false)
		importeDescuento(nullable:false, blank:false)
    }
	
	static belongsTo = [ informacionEmision:InformacionEmision ]
	
	String deudorProveedor
	String tipoDocumento
	int numeroDocumento
	Date fechaVencimiento
	int plazo
	String valorNominal
	String aforo
	String precioBase
	String tasaDescuento
	String precioFactoraje
	String importeDescuento
}
