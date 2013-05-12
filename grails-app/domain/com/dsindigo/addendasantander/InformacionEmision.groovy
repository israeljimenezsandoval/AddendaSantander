package com.dsindigo.addendasantander

class InformacionEmision {

    static constraints = {
	}
	
	String codigoCliente
	String contrato
	String periodo
	String centroCostos
	String folioInterno
	String claveSantander
	InformacionFactoraje tFactoraje
	
	static hasMany = [factorajes:InformacionFactoraje]
	static belongsTo = [ comprobante : Comprobante ]
		
	List factorajes
	
	static mapping = {
		factorajes cascade:"all-delete-orphan"
	}
}
