package com.dsindigo.addendasantander

import java.util.List;

class Comprobante {
	
	static constraints = {
	}
	static mapping = {
		informacionPago cascade: "all-delete-orphan"
	}
	static hasMany = [informacionPago: InformacionPago]
	
	List informacionPago
    String name
	String file 
	InformacionEmision informacionEmision
	Inmuebles inmuebles
	Basilea basilea
}
