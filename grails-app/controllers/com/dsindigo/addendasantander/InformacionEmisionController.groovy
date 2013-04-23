package com.dsindigo.addendasantander

import org.springframework.dao.DataIntegrityViolationException

class InformacionEmisionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [informacionEmisionInstanceList: InformacionEmision.list(params), informacionEmisionInstanceTotal: InformacionEmision.count()]
    }

    def create() {
        [informacionEmisionInstance: new InformacionEmision(params)]
    }

    def save() {
        def informacionEmisionInstance = new InformacionEmision(params)
        if (!informacionEmisionInstance.save(flush: true)) {
            render(view: "create", model: [informacionEmisionInstance: informacionEmisionInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'informacionEmision.label', default: 'InformacionEmision'), informacionEmisionInstance.id])
        redirect(action: "show", id: informacionEmisionInstance.id)
    }

    def show() {
        def informacionEmisionInstance = InformacionEmision.get(params.id)
        if (!informacionEmisionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'informacionEmision.label', default: 'InformacionEmision'), params.id])
            redirect(action: "list")
            return
        }

        [informacionEmisionInstance: informacionEmisionInstance]
    }

    def edit() {
        def informacionEmisionInstance = InformacionEmision.get(params.id)
        if (!informacionEmisionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'informacionEmision.label', default: 'InformacionEmision'), params.id])
            redirect(action: "list")
            return
        }

        [informacionEmisionInstance: informacionEmisionInstance]
    }

    def update() {
        def informacionEmisionInstance = InformacionEmision.get(params.id)
        if (!informacionEmisionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'informacionEmision.label', default: 'InformacionEmision'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (informacionEmisionInstance.version > version) {
                informacionEmisionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'informacionEmision.label', default: 'InformacionEmision')] as Object[],
                          "Another user has updated this InformacionEmision while you were editing")
                render(view: "edit", model: [informacionEmisionInstance: informacionEmisionInstance])
                return
            }
        }

        informacionEmisionInstance.properties = params

        if (!informacionEmisionInstance.save(flush: true)) {
            render(view: "edit", model: [informacionEmisionInstance: informacionEmisionInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'informacionEmision.label', default: 'InformacionEmision'), informacionEmisionInstance.id])
        redirect(action: "show", id: informacionEmisionInstance.id)
    }

    def delete() {
        def informacionEmisionInstance = InformacionEmision.get(params.id)
        if (!informacionEmisionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'informacionEmision.label', default: 'InformacionEmision'), params.id])
            redirect(action: "list")
            return
        }

        try {
            informacionEmisionInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'informacionEmision.label', default: 'InformacionEmision'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'informacionEmision.label', default: 'InformacionEmision'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
