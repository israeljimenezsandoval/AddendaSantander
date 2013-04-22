package com.dsindigo.addendasantander

class Comprobante {
	
	static constraints = {
		informacionPago(nullable:false)
    }

    String name
	InformacionPago informacionPago
	InformacionEmision informacionEmision
	Inmuebles inmuebles
	Basilea basilea
}
