package laboratorio

import grails.rest.RestfulController

class APIPropiedadController extends RestfulController<Propiedad> {

static responseFormats = ['json', 'xml']

    APIPropiedadController(){
      super(Propiedad)
    }

    def listAPIPropiedadPorTipoOperacion (String p) {
        if (p) {
        respond Propiedad.findAllBytipoOperacion(p)
        }
        else {
        respond([])
        }
      }


      def listAPIPropiedadPorCategoria (String p) {
    if (p) {
    respond Propiedad.findAllBycategoria(p)
    }
    else {
    respond([])
    }
  }

}
