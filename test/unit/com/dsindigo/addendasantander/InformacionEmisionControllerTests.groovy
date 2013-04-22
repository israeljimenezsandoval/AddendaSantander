package com.dsindigo.addendasantander



import org.junit.*
import grails.test.mixin.*

@TestFor(InformacionEmisionController)
@Mock(InformacionEmision)
class InformacionEmisionControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/informacionEmision/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.informacionEmisionInstanceList.size() == 0
        assert model.informacionEmisionInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.informacionEmisionInstance != null
    }

    void testSave() {
        controller.save()

        assert model.informacionEmisionInstance != null
        assert view == '/informacionEmision/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/informacionEmision/show/1'
        assert controller.flash.message != null
        assert InformacionEmision.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/informacionEmision/list'


        populateValidParams(params)
        def informacionEmision = new InformacionEmision(params)

        assert informacionEmision.save() != null

        params.id = informacionEmision.id

        def model = controller.show()

        assert model.informacionEmisionInstance == informacionEmision
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/informacionEmision/list'


        populateValidParams(params)
        def informacionEmision = new InformacionEmision(params)

        assert informacionEmision.save() != null

        params.id = informacionEmision.id

        def model = controller.edit()

        assert model.informacionEmisionInstance == informacionEmision
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/informacionEmision/list'

        response.reset()


        populateValidParams(params)
        def informacionEmision = new InformacionEmision(params)

        assert informacionEmision.save() != null

        // test invalid parameters in update
        params.id = informacionEmision.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/informacionEmision/edit"
        assert model.informacionEmisionInstance != null

        informacionEmision.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/informacionEmision/show/$informacionEmision.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        informacionEmision.clearErrors()

        populateValidParams(params)
        params.id = informacionEmision.id
        params.version = -1
        controller.update()

        assert view == "/informacionEmision/edit"
        assert model.informacionEmisionInstance != null
        assert model.informacionEmisionInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/informacionEmision/list'

        response.reset()

        populateValidParams(params)
        def informacionEmision = new InformacionEmision(params)

        assert informacionEmision.save() != null
        assert InformacionEmision.count() == 1

        params.id = informacionEmision.id

        controller.delete()

        assert InformacionEmision.count() == 0
        assert InformacionEmision.get(informacionEmision.id) == null
        assert response.redirectedUrl == '/informacionEmision/list'
    }
}
