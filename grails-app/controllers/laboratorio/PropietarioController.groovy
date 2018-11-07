package laboratorio

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PropietarioController {

    PropietarioService propietarioService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond propietarioService.list(params), model:[propietarioCount: propietarioService.count()]
    }

    def show(Long id) {
        respond propietarioService.get(id)
    }

    def create() {
        respond new Propietario(params)
    }

    def save(Propietario propietario) {
        if (propietario == null) {
            notFound()
            return
        }

        try {
            propietarioService.save(propietario)
        } catch (ValidationException e) {
            respond propietario.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'propietario.label', default: 'Propietario'), propietario.id])
                redirect propietario
            }
            '*' { respond propietario, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond propietarioService.get(id)
    }

    def update(Propietario propietario) {
        if (propietario == null) {
            notFound()
            return
        }

        try {
            propietarioService.save(propietario)
        } catch (ValidationException e) {
            respond propietario.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'propietario.label', default: 'Propietario'), propietario.id])
                redirect propietario
            }
            '*'{ respond propietario, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        propietarioService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'propietario.label', default: 'Propietario'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'propietario.label', default: 'Propietario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
