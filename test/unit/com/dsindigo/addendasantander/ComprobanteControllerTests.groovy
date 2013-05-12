package com.dsindigo.addendasantander



import org.junit.*
import grails.test.mixin.*

@TestFor(ComprobanteController)
@Mock(Comprobante)
class ComprobanteControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/comprobante/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.comprobanteInstanceList.size() == 0
        assert model.comprobanteInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.comprobanteInstance != null
    }

    void testSave() {
        controller.save()

        assert model.comprobanteInstance != null
        assert view == '/comprobante/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/comprobante/show/1'
        assert controller.flash.message != null
        assert Comprobante.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/comprobante/list'


        populateValidParams(params)
        def comprobante = new Comprobante(params)

        assert comprobante.save() != null

        params.id = comprobante.id

        def model = controller.show()

        assert model.comprobanteInstance == comprobante
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/comprobante/list'


        populateValidParams(params)
        def comprobante = new Comprobante(params)

        assert comprobante.save() != null

        params.id = comprobante.id

        def model = controller.edit()

        assert model.comprobanteInstance == comprobante
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/comprobante/list'

        response.reset()


        populateValidParams(params)
        def comprobante = new Comprobante(params)

        assert comprobante.save() != null

        // test invalid parameters in update
        params.id = comprobante.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/comprobante/edit"
        assert model.comprobanteInstance != null

        comprobante.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/comprobante/show/$comprobante.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        comprobante.clearErrors()

        populateValidParams(params)
        params.id = comprobante.id
        params.version = -1
        controller.update()

        assert view == "/comprobante/edit"
        assert model.comprobanteInstance != null
        assert model.comprobanteInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/comprobante/list'

        response.reset()

        populateValidParams(params)
        def comprobante = new Comprobante(params)

        assert comprobante.save() != null
        assert Comprobante.count() == 1

        params.id = comprobante.id

        controller.delete()

        assert Comprobante.count() == 0
        assert Comprobante.get(comprobante.id) == null
        assert response.redirectedUrl == '/comprobante/list'
    }
}
