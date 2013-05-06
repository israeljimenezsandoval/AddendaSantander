package com.dsindigo.addendasantander

class Basilea {
	
    static constraints = {
    }
	
	static belongsTo = [ comprobante:Comprobante ]
	
	String numContrato
	String origenGasto
	String tipoGasto
}
