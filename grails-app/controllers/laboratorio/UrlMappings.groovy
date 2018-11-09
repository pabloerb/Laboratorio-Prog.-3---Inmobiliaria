package laboratorio

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }


"/InfoPropiedad"(resources:"APIPropiedad"){

collection {"/listAPIPropiedadPorTipoOperacion" (controller: "APIPropiedad", action:
"listAPIPropiedadPorTipoOperacion")
}
}


        "/"(controller:"administracion", action:"inicio")
         //al iniciar la aplicacion me lleva al controller y al action indicado
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
