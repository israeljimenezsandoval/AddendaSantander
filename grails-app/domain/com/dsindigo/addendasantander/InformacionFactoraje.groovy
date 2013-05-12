package com.dsindigo.addendasantander

class InformacionFactoraje implements Serializable {

    static constraints = {
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
