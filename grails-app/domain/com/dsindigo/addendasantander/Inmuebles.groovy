package com.dsindigo.addendasantander

class Inmuebles {

    static constraints = {
		numContrato(nullable:false, blank:false)
    }
	
	Date fechaVencimiento
	String numContrato
}
