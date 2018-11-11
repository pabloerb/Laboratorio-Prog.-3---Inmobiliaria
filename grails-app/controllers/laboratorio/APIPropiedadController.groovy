package laboratorio

import grails.rest.RestfulController

class APIPropiedadController extends RestfulController<Propiedad> {

static responseFormats = ['json', 'xml']

    APIPropiedadController(){
      super(Propiedad)
    }

    def listAPIPropiedadPorTipoOperacion (String p) {
        if (p) {
        respond Propiedad.findAllByTipoOperacion(p)
        }
        else {
        respond([])
        }
      }


      def listAPIPropiedadPorCategoria (String p) {
    if (p) {
    respond Propiedad.findAllByCategoria(p)
    }
    else {
    respond([])
    }
  }

}
