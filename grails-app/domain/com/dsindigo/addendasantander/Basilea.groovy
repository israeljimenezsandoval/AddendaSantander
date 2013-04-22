package com.dsindigo.addendasantander

class Basilea {
	
    static constraints = {
		numContrato(nullable:false, blank:false)
		origenGasto(nullable:false, blank:false)
		tipoGasto(nullable:false, blank:false)
    }
	
	String numContrato
	String origenGasto
	String tipoGasto
}
