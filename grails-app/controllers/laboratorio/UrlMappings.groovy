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


        "/"(view:"/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
