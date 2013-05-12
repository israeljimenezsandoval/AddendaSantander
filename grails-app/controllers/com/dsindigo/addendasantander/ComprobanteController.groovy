package com.dsindigo.addendasantander

import org.springframework.dao.DataIntegrityViolationException
import org.springframework.web.multipart.MultipartHttpServletRequest;


class ComprobanteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [comprobanteInstanceList: Comprobante.list(params), comprobanteInstanceTotal: Comprobante.count()]
    }

    def create() {
		def comprobanteInstance = new Comprobante(params);
		if(request instanceof MultipartHttpServletRequest){
			def file = request.getFile("fileComprobante")
			if(file && !file.empty) {
				def fileString = new InputStreamReader(file.getInputStream())
				comprobanteInstance.file = fileString.getText()
			}
			[comprobanteInstance: comprobanteInstance]
		}else{
			flash.message = "Seleccione comprobante"
			redirect(action: "uploadComprobante")
		}
    }
	
	def uploadComprobante(){
		render(view: "uploadComprobante")
	}
	
    def save() {
        def comprobanteInstance = new Comprobante(params)
        if (!comprobanteInstance.save(flush: true)) {
            render(view: "create", model: [comprobanteInstance: comprobanteInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), comprobanteInstance.id])
        redirect(action: "show", id: comprobanteInstance.id)
    }
	
	def addInformacionPago(){
		def comprobanteInstance = new Comprobante(params)
		if (!comprobanteInstance.informacionPago)[
			comprobanteInstance.informacionPago = []
		]
		comprobanteInstance.informacionPago << new InformacionPago()
		render template: "form" , model: [comprobanteInstance: comprobanteInstance, formId: params.formId, elementToReplace: params.elementToReplace]
	}

    def show() {
        def comprobanteInstance = Comprobante.get(params.id)
        if (!comprobanteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect(action: "list")
            return
        }

        [comprobanteInstance: comprobanteInstance]
    }

    def edit() {
        def comprobanteInstance = Comprobante.get(params.id)
        if (!comprobanteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect(action: "list")
            return
        }

        [comprobanteInstance: comprobanteInstance]
    }

    def update() {
        def comprobanteInstance = Comprobante.get(params.id)
        if (!comprobanteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (comprobanteInstance.version > version) {
                comprobanteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'comprobante.label', default: 'Comprobante')] as Object[],
                          "Another user has updated this Comprobante while you were editing")
                render(view: "edit", model: [comprobanteInstance: comprobanteInstance])
                return
            }
        }

        comprobanteInstance.properties = params

        if (!comprobanteInstance.save(flush: true)) {
            render(view: "edit", model: [comprobanteInstance: comprobanteInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), comprobanteInstance.id])
        redirect(action: "show", id: comprobanteInstance.id)
    }

    def delete() {
        def comprobanteInstance = Comprobante.get(params.id)
        if (!comprobanteInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect(action: "list")
            return
        }

        try {
            comprobanteInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'comprobante.label', default: 'Comprobante'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
