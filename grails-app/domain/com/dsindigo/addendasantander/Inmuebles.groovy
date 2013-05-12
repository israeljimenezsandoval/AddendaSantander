package com.dsindigo.addendasantander

class Inmuebles {

    static constraints = {
	}
	
	static belongsTo = [ comprobante : Comprobante ]
	
	Date fechaVencimiento
	String numContrato
}
