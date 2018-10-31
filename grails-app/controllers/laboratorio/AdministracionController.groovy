package laboratorio

class AdministracionController {

  AdministracionService administracionService

  static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def buscarPropiedades()
    {
      if(!params.barrio || !params.ciudad) {
          flash.message="Debe completar los campos para la busqueda"
        /*  return redirect(action:'index')*/
        }
        flash.message="Resultado para busqueda de propiedades con para el Barrio=${params.barrio} y Ciudad=${params.ciudad}"
        def propiedades= administracionService.buscarPropiedades(params.barrio,params.ciudad)
        //def libros= libroService.buscarLibrosSeguro(params.autor)
        redirect(view:"administracion/buscarPropiedades", model:[propiedadesList:propiedades, propiedadesCount:propiedades.size()])
    }
}
