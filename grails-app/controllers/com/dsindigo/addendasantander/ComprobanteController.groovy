package com.dsindigo.addendasantander

import org.springframework.dao.DataIntegrityViolationException

class ComprobanteController {

    static allowedMethods = [create: ['GET', 'POST'], edit: ['GET', 'POST'], delete: 'POST']
	
	def index() {
        redirect action: 'list', params: params
	}

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [comprobanteInstanceList: Comprobante.list(params), comprobanteInstanceTotal: Comprobante.count()]
    }

    def create() {
		switch (request.method) {
		case 'GET':
        	[comprobanteInstance: new Comprobante(params)]
			break
		case 'POST':
	        def comprobanteInstance = new Comprobante(params)
	        if (!comprobanteInstance.save(flush: true)) {
	            render view: 'create', model: [comprobanteInstance: comprobanteInstance]
	            return
	        }

			flash.message = message(code: 'default.created.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), comprobanteInstance.id])
	        redirect action: 'show', id: comprobanteInstance.id
			break
		}
    }
	
	def show() {
        def comprobanteInstance = Comprobante.get(params.id)
        if (!comprobanteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect action: 'list'
            return
        }

        [comprobanteInstance: comprobanteInstance]
    }
	
	def addAddenda(){
		def comprobanteInstance = new Comprobante();
		comprobanteInstance.informacionPago = new InformacionPago(params)
		comprobanteInstance.informacionEmision = new InformacionEmision(params)
		comprobanteInstance.inmuebles = new Inmuebles(params)
		comprobanteInstance.basilea = new Basilea(params)
	}
	
	def validateInput(){
	}

    def edit() {
		switch (request.method) {
		case 'GET':
	        def comprobanteInstance = Comprobante.get(params.id)
	        if (!comprobanteInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
	            redirect action: 'list'
	            return
	        }

	        [comprobanteInstance: comprobanteInstance]
			break
		case 'POST':
	        def comprobanteInstance = Comprobante.get(params.id)
	        if (!comprobanteInstance) {
	            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
	            redirect action: 'list'
	            return
	        }

	        if (params.version) {
	            def version = params.version.toLong()
	            if (comprobanteInstance.version > version) {
	                comprobanteInstance.errors.rejectValue('version', 'default.optimistic.locking.failure',
	                          [message(code: 'comprobante.label', default: 'Comprobante')] as Object[],
	                          "Another user has updated this Comprobante while you were editing")
	                render view: 'edit', model: [comprobanteInstance: comprobanteInstance]
	                return
	            }
	        }

	        comprobanteInstance.properties = params

	        if (!comprobanteInstance.save(flush: true)) {
	            render view: 'edit', model: [comprobanteInstance: comprobanteInstance]
	            return
	        }

			flash.message = message(code: 'default.updated.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), comprobanteInstance.id])
	        redirect action: 'show', id: comprobanteInstance.id
			break
		}
    }

    def delete() {
        def comprobanteInstance = Comprobante.get(params.id)
        if (!comprobanteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect action: 'list'
            return
        }

        try {
            comprobanteInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect action: 'list'
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect action: 'show', id: params.id
        }
    }
}
