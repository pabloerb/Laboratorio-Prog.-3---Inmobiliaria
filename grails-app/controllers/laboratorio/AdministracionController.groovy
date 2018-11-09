package laboratorio

class AdministracionController {

  AdministracionService administracionService

  static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def buscarPropiedades()
    {
      if(!params.barrio || !params.ciudad) {
          flash.message="Debe completar los campos para la busqueda"
          render(view:"busqueda")

        }
        else{
          flash.message="Resultado para busqueda de propiedades para Barrio=${params.barrio} y Ciudad=${params.ciudad}"
          def propiedades= administracionService.buscarPropiedades(params.barrio,params.ciudad)
          render(view:"busqueda", model:[propiedadesList:propiedades,propiedadesCount:propiedades.size()])
        }

    }

    def mostrarInfo()
    {
      render(view:"informacion")
    }

    def mostrarOferta()
    {
      render(view:"oferta", model:[listaPropiedades: Propiedad.list()])
    }

    def inicio()
    {
      //def resultado = Propiedad.list()
      render(view:"/index",model:[listaPropiedades: Propiedad.listOrderById(max:6, order:"desc")])//Función de grails
      //me lleva a la vista "index" y manda una lista con las ultimas ofertas.
    }

    def formOferta()
    {
      render(view:"formularioOferta")
    }

    def sesion(){
    render (view: "gestion")
 }

}
